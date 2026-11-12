import InitECandidate.Solver.MemSafe.Aw.Merk

set_option autoImplicit false

/-!
# `merkleize_progressive` (target E)
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def rootsN : MlS := nm "roots"
def accN : MlS := nm "acc"
def kN : MlS := nm "k"
def offN : MlS := nm "off"

def mpLoop : ProgHOL 64 :=
  .dec cntN .one (.op .sub [lv nN, lv offN])
    (.seq (.ite (.cmp .lower (lv sizeN) (lv cntN)) (.assign .local cntN (lv sizeN)) .skip)
      (.seq (callD (nm "merkleize") [.op .add [lv pN, .panop .mul [lv offN, cw 32]], lv cntN,
          lv sizeN, .op .add [lv rootsN, .panop .mul [lv kN, cw 32]]])
        (.seq (.assign .local offN (.op .add [lv offN, lv sizeN]))
          (.seq (.assign .local sizeN (.shift .lsl (lv sizeN) (cw 2)))
            (.assign .local kN (.op .add [lv kN, cw 1]))))))

def mpTail : ProgHOL 64 :=
  .seq (.assign .local kN (.op .sub [lv kN, cw 1]))
    (callD (nm "sha256_pair") [.op .add [lv rootsN, .panop .mul [lv kN, cw 32]], lv accN, lv accN])

def mpBody : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall rootsN .one (nm "alloc") [.panop .mul [cw 24, cw 32]]
      (.decCall accN .one (nm "alloc") [cw 32]
        (.dec kN .one (cw 0)
          (.dec offN .one (cw 0)
            (.dec sizeN .one (cw 1)
              (.seq (.while (.cmp .lower (lv offN) (lv nN)) mpLoop)
                (.seq (callD (nm "memzero") [lv accN, cw 32])
                  (.seq (.while (.cmp .notEqual (lv kN) (cw 0)) mpTail)
                    (.seq (callD (nm "memcpy") [lv outN, lv accN, cw 32])
                      (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0))))))))))))

theorem code_merkleize_progressive : guestCode (nm "merkleize_progressive") =
    some ([(pN, .one), (nN, .one), (outN, .one)], mpBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_merkleize_progressive =
      (nm "merkleize_progressive", [(pN, .one), (nN, .one), (outN, .one)], mpBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 188) (by decide)) ⟨_, rfl⟩ h

/-- Bound on `k` (the count of roots): `k * 32 ≤ domTop + 64`. -/
def KL : Nat := (domTop + 32) / 32 + 1

structure MP (h0 p0hp : Nat) (O : BitVec 64) (m : Locals) : Prop where
  out : m.lookup outN = some (.val (.word O))
  n : Bd m nN 0 WW
  mark : MkB p0hp markN m
  roots : Bd m rootsN h0 heapEnd
  acc : Bd m accN h0 heapEnd
  k : Bd m kN 0 KL
  off : Bd m offN 0 WW
  size : Bd m sizeN 0 WW

def mpNames : List MlS := [outN, nN, markN, rootsN, accN, kN, offN, sizeN]

theorem mp_upd {h0 p0hp : Nat} {O : BitVec 64} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h : MP h0 p0hp O m) (hx : x ∉ mpNames) : MP h0 p0hp O (m.update (x, v)) := by
  simp only [mpNames, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := hx
  exact ⟨by rw [lookup_update_ne _ _ h1]; exact h.out, bd_upd h2 h.n, mkb_upd h3 h.mark,
    bd_upd h4 h.roots, bd_upd h5 h.acc, bd_upd h6 h.k, bd_upd h7 h.off, bd_upd h8 h.size⟩

theorem mp_res {h0 p0hp : Nat} {O : BitVec 64} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h : MP h0 p0hp O m) (hx : x ∉ mpNames) : MP h0 p0hp O (m.resVarEq (x, o)) := by
  simp only [mpNames, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := hx
  obtain ⟨w, hw, a1, a2, a3⟩ := h.mark
  exact ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact h.out, bd_res h2 h.n,
    ⟨w, by rw [lookup_resVarEq_ne _ _ h3]; exact hw, a1, a2, a3⟩,
    bd_res h4 h.roots, bd_res h5 h.acc, bd_res h6 h.k, bd_res h7 h.off, bd_res h8 h.size⟩

theorem mp_k {h0 p0hp : Nat} {O : BitVec 64} {m : Locals} {W : BitVec 64}
    (h : MP h0 p0hp O m) (hW : W.toNat ≤ KL) : MP h0 p0hp O (m.update (kN, .val (.word W))) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.out, bd_upd (by decide) h.n,
    mkb_upd (by decide) h.mark, bd_upd (by decide) h.roots, bd_upd (by decide) h.acc,
    bd_new _ _ _ (Nat.zero_le _) hW, bd_upd (by decide) h.off, bd_upd (by decide) h.size⟩

theorem mp_off {h0 p0hp : Nat} {O : BitVec 64} {m : Locals} {W : BitVec 64}
    (h : MP h0 p0hp O m) : MP h0 p0hp O (m.update (offN, .val (.word W))) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.out, bd_upd (by decide) h.n,
    mkb_upd (by decide) h.mark, bd_upd (by decide) h.roots, bd_upd (by decide) h.acc,
    bd_upd (by decide) h.k, bd_wd _ _ _, bd_upd (by decide) h.size⟩

theorem mp_size {h0 p0hp : Nat} {O : BitVec 64} {m : Locals} {W : BitVec 64}
    (h : MP h0 p0hp O m) : MP h0 p0hp O (m.update (sizeN, .val (.word W))) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.out, bd_upd (by decide) h.n,
    mkb_upd (by decide) h.mark, bd_upd (by decide) h.roots, bd_upd (by decide) h.acc,
    bd_upd (by decide) h.k, bd_upd (by decide) h.off, bd_wd _ _ _⟩

def MpPre (h0 : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ O : BitVec 64, argW vs 2 = some O ∧ h0 ≤ O.toNat ∧ O.toNat ≤ 2 ^ 60

def MpPost (vs : List (ValueHOL 64)) (_ : ValueHOL 64) : Prop :=
  ∀ O : BitVec 64, argW vs 2 = some O → O.toNat + 32 ≤ domTop + 64

theorem ne0_of_cond {t : State σ} {K : BitVec 64}
    (hk : t.locals.lookup kN = some (.val (.word K)))
    (hc : CondTrue t (.cmp .notEqual (lv kN) (cw 0))) : 0 < K.toNat := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hk] at hx
  cases hx
  rw [ev_cw] at hy
  cases hy
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_true', beq_eq_false_iff_ne] at hxy
  exact Nat.pos_of_ne_zero (fun h => hxy (BitVec.eq_of_toNat_eq (by simpa using h)))

theorem awSpec_merkleize_progressive {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hMerk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H (nm "merkleize_progressive") [] (fun vs _ h0 => MpPre h0 vs)
      (fun vs _ v _ => MpPost vs v) := by
  refine awSpec_of_hoareG (PV := MpPost) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, Ot, rfl, hA', hB', hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_merkleize_progressive (by decide) (by decide) (by decide) hl
  obtain ⟨P0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hs62 : domTop < 2 ^ 62 := by decide
  have hHEv : heapEnd = 2952790016 := rfl
  have hdt : domTop = 1099511627776 := by decide
  have hKL : KL = 34359738370 := by decide
  have hmerk := asp_of_aw hK hMerk (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  refine hoareG_conseq (P := APre a (fun m => m.lookup outN = some (.val (.word O)) ∧ Bd m nN 0 WW))
    (Q := AQ a (fun _ => True) (MpPost [.val (.word P0), .val (.word N0), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact hlc, bd_wide (by rw [hloc]; exact hlb)⟩)
    (fun _ _ _ _ h => h)
  unfold mpBody
  -- mark
  refine hoareG_decCallAs' hK (asp_mark hK hC)
    (Lk := fun m => (m.lookup outN = some (.val (.word O)) ∧ Bd m nN 0 WW) ∧ MkB p.hp markN m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1, bd_upd (by decide) hL.2⟩,
      w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s1
  -- roots = alloc(24 * 32)
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := fun m => ((m.lookup outN = some (.val (.word O)) ∧ Bd m nN 0 WW) ∧ MkB p.hp markN m) ∧
      Bd m rootsN h0 heapEnd) (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_mul2 (ev_cw _ 24) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1, bd_upd (by decide) hL.1.2⟩,
      mkb_upd (by decide) hL.2⟩, bd_new _ _ _ hq1 (by omega)⟩
  intro s2
  -- acc = alloc(32)
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := fun m => (((m.lookup outN = some (.val (.word O)) ∧ Bd m nN 0 WW) ∧
      MkB p.hp markN m) ∧ Bd m rootsN h0 heapEnd) ∧ Bd m accN h0 heapEnd)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_cw _ 32) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1.1,
      bd_upd (by decide) hL.1.1.2⟩, mkb_upd (by decide) hL.1.2⟩, bd_upd (by decide) hL.2⟩,
      bd_new _ _ _ hq1 (by omega)⟩
  intro s3
  -- k, off, size
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s4 hs4 hL4 v4 hv4 hsh4
  rw [ev_cw] at hv4
  cases hv4
  refine hoareG_preA (L' := fun m => ((((m.lookup outN = some (.val (.word O)) ∧ Bd m nN 0 WW) ∧
      MkB p.hp markN m) ∧ Bd m rootsN h0 heapEnd) ∧ Bd m accN h0 heapEnd) ∧ Bd m kN 0 KL) ?_
    (fun m hm => by
      subst hm
      exact ⟨⟨⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL4.1.1.1.1,
        bd_upd (by decide) hL4.1.1.1.2⟩, mkb_upd (by decide) hL4.1.1.2⟩,
        bd_upd (by decide) hL4.1.2⟩, bd_upd (by decide) hL4.2⟩, bd_new _ _ _ (by simp) (by simp [hKL])⟩)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s5 hs5 hL5 v5 hv5 hsh5
  rw [ev_cw] at hv5
  cases hv5
  refine hoareG_preA (L' := fun m => (((((m.lookup outN = some (.val (.word O)) ∧ Bd m nN 0 WW) ∧
      MkB p.hp markN m) ∧ Bd m rootsN h0 heapEnd) ∧ Bd m accN h0 heapEnd) ∧ Bd m kN 0 KL) ∧
      Bd m offN 0 WW) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨⟨⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL5.1.1.1.1.1,
      bd_upd (by decide) hL5.1.1.1.1.2⟩, mkb_upd (by decide) hL5.1.1.1.2⟩,
      bd_upd (by decide) hL5.1.1.2⟩, bd_upd (by decide) hL5.1.2⟩, bd_upd (by decide) hL5.2⟩,
      bd_wd _ _ _⟩)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s6 hs6 hL6 v6 hv6 hsh6
  rw [ev_cw] at hv6
  cases hv6
  refine hoareG_preA (L' := MP h0 p.hp O) ?_ (fun m hm => by
    subst hm
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL6.1.1.1.1.1.1,
      bd_upd (by decide) hL6.1.1.1.1.1.2, mkb_upd (by decide) hL6.1.1.1.1.2,
      bd_upd (by decide) hL6.1.1.1.2, bd_upd (by decide) hL6.1.1.2, bd_upd (by decide) hL6.1.2,
      bd_upd (by decide) hL6.2, bd_wd _ _ _⟩)
  have hnames : ∀ x : MlS, x ≠ outN → x ≠ nN → x ≠ markN → x ≠ rootsN → x ≠ accN → x ≠ kN →
      x ≠ offN → x ≠ sizeN → x ∉ mpNames := by
    intro x h1 h2 h3 h4 h5 h6 h7 h8
    simp only [mpNames, List.mem_cons, List.not_mem_nil, or_false, not_or]
    exact ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩
  have hcnt : cntN ∉ mpNames := hnames _ (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide)
  refine hoareG_seqA (L2 := MP h0 p.hp O) ?_ ?_
  · refine hoareG_whileA hK (J := MP h0 p.hp O) ?_ (fun s _ h _ => h)
    refine hoareG_pre (P := APre a (MP h0 p.hp O)) ?_ (fun s _ h => h.1)
    unfold mpLoop
    refine hoareG_decA hK (L' := fun _ m' => MP h0 p.hp O m') ?_
      (fun m m' _ h => mp_res h hcnt)
    intro s7 hs7 hL7 v7 hv7 hsh7
    obtain ⟨Cn, rfl⟩ := val_of_shapeEq_one hsh7
    refine hoareG_preA (L' := fun m => MP h0 p.hp O m ∧ Bd m cntN 0 WW) ?_ (fun m hm => by
      subst hm
      exact ⟨mp_upd hL7 hcnt, bd_wd _ _ _⟩)
    refine hoareG_seqA (L2 := fun m => MP h0 p.hp O m ∧ Bd m cntN 0 WW)
      (hoareG_iteA (hoareG_assignA hK fun s _ hL v hv => ?_) (hoareG_skipA fun m h => h)) ?_
    · obtain ⟨Sz, hsz, -, -⟩ := hL.1.size
      rw [ev_lw hsz] at hv
      cases hv
      exact ⟨mp_upd hL.1 hcnt, bd_wd _ _ _⟩
    refine hoareG_seqA (L2 := fun m => (MP h0 p.hp O m ∧ Bd m cntN 0 WW) ∧
        Bd m kN 0 ((domTop + 32) / 32))
      (hoareG_callAs hK hmerk ?_ ?_) ?_
    · intro s8 hs8 hP8 vs hvs callee
      obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
      obtain ⟨Rt, hr, g1, g2⟩ := hP8.2.1.roots
      obtain ⟨Kk, hk, -, g4⟩ := hP8.2.1.k
      rw [ev_add2 (ev_lw hr) (ev_mul2 (ev_lw hk) (ev_cw _ 32))] at e4
      cases e4
      have hm : (Kk * BitVec.ofNat 64 32).toNat = Kk.toNat * 32 :=
        toNat_mulc (by omega) (by omega)
      exact ⟨Rt + Kk * BitVec.ofNat 64 32, rfl, by rw [toNat_add2 (by omega), hm]; omega,
        by rw [toNat_add2 (by omega), hm]; omega⟩
    · intro s8 vs v st hL hvs hRet
      obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
      obtain ⟨Rt, hr, g1, g2⟩ := hL.1.roots
      obtain ⟨Kk, hk, -, g4⟩ := hL.1.k
      rw [ev_add2 (ev_lw hr) (ev_mul2 (ev_lw hk) (ev_cw _ 32))] at e4
      cases e4
      have hm : (Kk * BitVec.ofNat 64 32).toNat = Kk.toNat * 32 :=
        toNat_mulc (by omega) (by omega)
      have hI := hRet (Rt + Kk * BitVec.ofNat 64 32) rfl
      rw [toNat_add2 (by omega), hm] at hI
      exact ⟨hL, Kk, hk, Nat.zero_le _, by omega⟩
    refine hoareG_seqA (L2 := fun m => (MP h0 p.hp O m ∧ Bd m cntN 0 WW) ∧
        Bd m kN 0 ((domTop + 32) / 32))
      (hoareG_assignA hK fun s _ hL v hv => ?_) ?_
    · obtain ⟨Oo, ho, -, -⟩ := hL.1.1.off
      obtain ⟨Sz, hsz, -, -⟩ := hL.1.1.size
      rw [ev_add2 (ev_lw ho) (ev_lw hsz)] at hv
      cases hv
      exact ⟨⟨mp_off hL.1.1, bd_upd (by decide) hL.1.2⟩, bd_upd (by decide) hL.2⟩
    refine hoareG_seqA (L2 := fun m => (MP h0 p.hp O m ∧ Bd m cntN 0 WW) ∧
        Bd m kN 0 ((domTop + 32) / 32))
      (hoareG_assignA hK fun s _ hL v hv => ?_) ?_
    · obtain ⟨Sz, hsz, -, -⟩ := hL.1.1.size
      rw [ev_lsl2 hsz] at hv
      cases hv
      exact ⟨⟨mp_size hL.1.1, bd_upd (by decide) hL.1.2⟩, bd_upd (by decide) hL.2⟩
    · refine hoareG_assignA hK fun s _ hL v hv => ?_
      obtain ⟨Kk, hk, -, g4⟩ := hL.2
      rw [ev_add2 (ev_lw hk) (ev_cw _ 1)] at hv
      cases hv
      have hK1 : (Kk + BitVec.ofNat 64 1).toNat = Kk.toNat + 1 := toNat_addc (by omega)
      exact mp_k hL.1.1 (by rw [hK1]; omega)
  · -- memzero(acc, 32)
    refine hoareG_seqA (L2 := MP h0 p.hp O)
      (hoareG_callAs hK (asp_memzero hK hC hA hT) ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
    · intro s9 hs9 hP9 vs hvs callee
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      obtain ⟨Ac, ha, g1, g2⟩ := hP9.2.acc
      rw [ev_lw ha] at e1
      cases e1
      rw [ev_cw] at e2
      cases e2
      exact ⟨Ac, BitVec.ofNat 64 32, rfl, rfl, by omega, by omega⟩
    refine hoareG_seqA (L2 := MP h0 p.hp O) ?_ ?_
    · refine hoareG_whileA hK (J := MP h0 p.hp O) ?_ (fun s _ h _ => h)
      refine hoareG_pre (P := APre a (fun m => MP h0 p.hp O m ∧
        ∃ K : BitVec 64, m.lookup kN = some (.val (.word K)) ∧ 0 < K.toNat)) ?_
        (fun s hs ⟨hP, hc⟩ => ⟨hP.1, hP.2, by
          obtain ⟨K, hk, -, -⟩ := hP.2.k
          exact ⟨K, hk, ne0_of_cond hk hc⟩⟩)
      unfold mpTail
      refine hoareG_seqA (L2 := MP h0 p.hp O) (hoareG_assignA hK fun s _ hL v hv => ?_)
        (hoareG_callAs hK (asp_sha hK hC hA hT) ?_ (fun _ _ _ _ hL _ _ => hL))
      · obtain ⟨K, hk, hK0⟩ := hL.2
        rw [ev_sub2 (ev_lw hk) (ev_cw _ 1)] at hv
        cases hv
        obtain ⟨K', hk', -, g4⟩ := hL.1.k
        rw [hk] at hk'
        cases hk'
        refine mp_k hL.1 ?_
        rw [toNat_subc (by omega)]
        omega
      · intro s9 hs9 hP9 vs hvs callee
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        obtain ⟨Ac, ha, g1, g2⟩ := hP9.2.acc
        rw [ev_lw ha] at e3
        cases e3
        exact ⟨Ac, rfl, by omega, by omega⟩
    · refine hoareG_seqA (L2 := fun m => MP h0 p.hp O m ∧ O.toNat + 32 ≤ domTop + 64)
        (hoareG_callAs hK (asp_memcpy hK hC hA hT) ?_ ?_) ?_
      · intro s9 hs9 hP9 vs hvs callee
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        rw [ev_lw hP9.2.out] at e1
        cases e1
        rw [ev_cw] at e3
        cases e3
        exact ⟨O, BitVec.ofNat 64 32, rfl, rfl, by omega, by omega⟩
      · intro s9 vs v st hL hvs hRet
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        rw [ev_lw hL.out] at e1
        cases e1
        rw [ev_cw] at e3
        cases e3
        have := hRet O (BitVec.ofNat 64 32) rfl rfl
        simp only [BitVec.toNat_ofNat] at this
        exact ⟨hL, by omega⟩
      · refine hoareG_seqA (L2 := fun _ => O.toNat + 32 ≤ domTop + 64)
          (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
        · intro s9 hs9 hP9 vs hvs callee
          obtain ⟨w, hw, h1, h2, h3⟩ := hP9.2.1.mark
          rw [evs_cons (ev_lw hw) evs_nil] at hvs
          cases hvs
          exact ⟨w, rfl, h1, h2, h3⟩
        · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
            cases hO'
            exact hL)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_merkleize_progressive
