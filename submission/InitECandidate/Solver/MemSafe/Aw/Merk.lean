import InitECandidate.Solver.MemSafe.Aw.Chain
import InitECandidate.Solver.MemSafe.Aw.Sha
import InitECandidate.Solver.MemSafe.Aw.Pure
import InitECandidate.Solver.MemSafe.Aw.Kit
import InitECandidate.Solver.MemSafe.Bn.Code

set_option autoImplicit false

/-!
# `merkleize` (target E)
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

def limN : MlS := nm "limit"
def dlN : MlS := nm "dl"
def dnN : MlS := nm "dn"
def tgN : MlS := nm "target"
def sizeN : MlS := nm "size"
def curN : MlS := nm "cur"
def halfN : MlS := nm "half"
def dN : MlS := nm "d"
def zhN : MlS := nm "zero_hashes"

def merkInner : ProgHOL 64 :=
  .seq (callD (nm "sha256_pair")
      [.op .add [lv bufN, .panop .mul [lv jN, cw 64]],
       .op .add [lv bufN, .panop .mul [lv jN, cw 64], cw 32],
       .op .add [lv bufN, .panop .mul [lv jN, cw 32]]])
    (.assign .local jN (.op .add [lv jN, cw 1]))

def merkOuter : ProgHOL 64 :=
  .dec halfN .one (.shift .lsr (lv curN) (cw 1))
    (.dec jN .one (cw 0)
      (.seq (.while (.cmp .less (lv jN) (lv halfN)) merkInner)
        (.assign .local curN (lv halfN))))

def merkTail : ProgHOL 64 :=
  .seq (callD (nm "sha256_pair") [lv bufN, .op .add [.var .global zhN, .panop .mul [lv dN, cw 32]],
      lv bufN])
    (.assign .local dN (.op .add [lv dN, cw 1]))

def merkRest : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.dec sizeN .one (.shift .lsl (cw 1) (lv dnN))
      (.decCall bufN .one (nm "alloc") [.panop .mul [lv sizeN, cw 32]]
        (.seq (callD (nm "memcpy") [lv bufN, lv pN, .panop .mul [lv nN, cw 32]])
          (.seq (callD (nm "memzero") [.op .add [lv bufN, .panop .mul [lv nN, cw 32]],
              .panop .mul [.op .sub [lv sizeN, lv nN], cw 32]])
            (.dec curN .one (lv sizeN)
              (.seq (.while (.cmp .less (cw 1) (lv curN)) merkOuter)
                (.dec dN .one (lv dnN)
                  (.seq (.while (.cmp .less (lv dN) (lv tgN)) merkTail)
                    (.seq (callD (nm "memcpy") [lv outN, lv bufN, cw 32])
                      (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0))))))))))))

def merkBody : ProgHOL 64 :=
  .decCall dlN .one (nm "ceil_log2") [lv limN]
    (.decCall dnN .one (nm "ceil_log2") [lv nN]
      (.decCall tgN .one (nm "max") [lv dlN, lv dnN]
        (.seq (.ite (.cmp .equal (lv nN) (cw 0))
            (.seq (callD (nm "memcpy") [lv outN,
                .op .add [.var .global zhN, .panop .mul [lv tgN, cw 32]], cw 32])
              (.return (cw 0)))
            .skip)
          merkRest)))

theorem code_merkleize : guestCode (nm "merkleize") =
    some ([(pN, .one), (nN, .one), (limN, .one), (outN, .one)], merkBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_merkleize =
      (nm "merkleize", [(pN, .one), (nN, .one), (limN, .one), (outN, .one)], merkBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 186) (by decide)) ⟨_, rfl⟩ h

/-! ## Pure helpers -/

theorem pureSpecs_nil : PureSpecs σ X [] := fun f hf => absurd hf (by simp)

theorem footRet_ceil_log2 (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "ceil_log2") (fun _ => True) (fun _ _ => False) (fun _ _ => True) :=
  footRet_pure_fn pureSpecs_nil hC (d := Guest.Software.guestFn_ceil_log2)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 36) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv)

theorem footRet_max (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "max") (fun _ => True) (fun _ _ => False) (fun _ _ => True) :=
  footRet_pure_fn pureSpecs_nil hC (d := Guest.Software.guestFn_max)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 32) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv)

/-- `sha256_pair` relative to the invariant: the output pointer is in `[h0, 2^60]`. -/
def ShaPre (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ O : BitVec 64, argW vs 2 = some O ∧ a.h0 ≤ O.toNat ∧ O.toNat ≤ 2 ^ 60

theorem asp_sha {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) :
    ASp a X (nm "sha256_pair") (fun vs _ => ShaPre a vs)
      (fun vs v _ => ∀ O : BitVec 64, argW vs 2 = some O → InD O) :=
  asp_mono_pre (asp_of_footRet' (PreX := fun vs => ∃ D : BitVec 64, argW vs 2 = some D ∧
      a.h0 ≤ D.toNat) hK (footRet_sha256_pair hC hA hT)
      (fun vs x ⟨D, hD, hh⟩ ⟨D', hD', hab⟩ => by
        rw [hD] at hD'
        cases hD'
        exact abvR_above hK.h8 hh hab))
    (fun vs _ ⟨D, hD, h1, h2⟩ => ⟨⟨D, hD, h2⟩, D, hD, h1⟩)

/-! ## Invariants -/

def F0 (O : BitVec 64) (m : Locals) : Prop :=
  m.lookup outN = some (.val (.word O)) ∧ Bd m nN 0 WW

def F1 (O : BitVec 64) (m : Locals) : Prop := F0 O m ∧ Bd m dnN 0 WW ∧ Bd m tgN 0 WW

def F2 (O : BitVec 64) (p0hp : Nat) (m : Locals) : Prop := F1 O m ∧ MkB p0hp markN m

def F3 (O : BitVec 64) (p0hp : Nat) (m : Locals) : Prop := F2 O p0hp m ∧ Bd m sizeN 0 WW

def F4 (O : BitVec 64) (p0hp h0 : Nat) (m : Locals) : Prop :=
  F3 O p0hp m ∧ Bd m bufN h0 heapEnd

/-- After `memcpy(buf, p, n * 32)`. -/
def Mc2 (m : Locals) : Prop :=
  ∃ Bb N : BitVec 64, m.lookup bufN = some (.val (.word Bb)) ∧
    m.lookup nN = some (.val (.word N)) ∧
    ((N * BitVec.ofNat 64 32).toNat = 0 ∨ Bb.toNat + (N * BitVec.ofNat 64 32).toNat ≤ domTop + 64)

def F5 (O : BitVec 64) (p0hp h0 : Nat) (m : Locals) : Prop := F4 O p0hp h0 m ∧ Mc2 m

theorem f1_upd {O : BitVec 64} {m : Locals} {x : MlS} {v : ValueHOL 64} (h : F1 O m)
    (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN) : F1 O (m.update (x, v)) :=
  ⟨⟨by rw [lookup_update_ne _ _ h1]; exact h.1.1, bd_upd h2 h.1.2⟩, bd_upd h3 h.2.1,
    bd_upd h4 h.2.2⟩

theorem f1_res {O : BitVec 64} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)} (h : F1 O m)
    (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN) :
    F1 O (m.resVarEq (x, o)) :=
  ⟨⟨by rw [lookup_resVarEq_ne _ _ h1]; exact h.1.1, bd_res h2 h.1.2⟩, bd_res h3 h.2.1,
    bd_res h4 h.2.2⟩

theorem f2_upd {O : BitVec 64} {p0hp : Nat} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h : F2 O p0hp m) (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN)
    (h5 : x ≠ markN) : F2 O p0hp (m.update (x, v)) :=
  ⟨f1_upd h.1 h1 h2 h3 h4, mkb_upd h5 h.2⟩

theorem f2_res {O : BitVec 64} {p0hp : Nat} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h : F2 O p0hp m) (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN)
    (h5 : x ≠ markN) : F2 O p0hp (m.resVarEq (x, o)) := by
  obtain ⟨hf, w, hw, a1, a2, a3⟩ := h
  exact ⟨f1_res hf h1 h2 h3 h4, w, by rw [lookup_resVarEq_ne _ _ h5]; exact hw, a1, a2, a3⟩

theorem f3_upd {O : BitVec 64} {p0hp : Nat} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h : F3 O p0hp m) (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN)
    (h5 : x ≠ markN) (h6 : x ≠ sizeN) : F3 O p0hp (m.update (x, v)) :=
  ⟨f2_upd h.1 h1 h2 h3 h4 h5, bd_upd h6 h.2⟩

theorem f3_res {O : BitVec 64} {p0hp : Nat} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h : F3 O p0hp m) (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN)
    (h5 : x ≠ markN) (h6 : x ≠ sizeN) : F3 O p0hp (m.resVarEq (x, o)) :=
  ⟨f2_res h.1 h1 h2 h3 h4 h5, bd_res h6 h.2⟩

theorem f4_upd {O : BitVec 64} {p0hp h0 : Nat} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h : F4 O p0hp h0 m) (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN)
    (h5 : x ≠ markN) (h6 : x ≠ sizeN) (h7 : x ≠ bufN) : F4 O p0hp h0 (m.update (x, v)) :=
  ⟨f3_upd h.1 h1 h2 h3 h4 h5 h6, bd_upd h7 h.2⟩

theorem f4_res {O : BitVec 64} {p0hp h0 : Nat} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h : F4 O p0hp h0 m) (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN)
    (h5 : x ≠ markN) (h6 : x ≠ sizeN) (h7 : x ≠ bufN) : F4 O p0hp h0 (m.resVarEq (x, o)) :=
  ⟨f3_res h.1 h1 h2 h3 h4 h5 h6, bd_res h7 h.2⟩

theorem mc2_upd {m : Locals} {x : MlS} {v : ValueHOL 64} (h : Mc2 m) (h1 : x ≠ bufN)
    (h2 : x ≠ nN) : Mc2 (m.update (x, v)) := by
  obtain ⟨Bb, N, a1, a2, a3⟩ := h
  exact ⟨Bb, N, by rw [lookup_update_ne _ _ h1]; exact a1, by rw [lookup_update_ne _ _ h2]; exact a2, a3⟩

theorem mc2_res {m : Locals} {x : MlS} {o : Option (ValueHOL 64)} (h : Mc2 m) (h1 : x ≠ bufN)
    (h2 : x ≠ nN) : Mc2 (m.resVarEq (x, o)) := by
  obtain ⟨Bb, N, a1, a2, a3⟩ := h
  exact ⟨Bb, N, by rw [lookup_resVarEq_ne _ _ h1]; exact a1,
    by rw [lookup_resVarEq_ne _ _ h2]; exact a2, a3⟩

theorem f5_upd {O : BitVec 64} {p0hp h0 : Nat} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h : F5 O p0hp h0 m) (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN)
    (h5 : x ≠ markN) (h6 : x ≠ sizeN) (h7 : x ≠ bufN) : F5 O p0hp h0 (m.update (x, v)) :=
  ⟨f4_upd h.1 h1 h2 h3 h4 h5 h6 h7, mc2_upd h.2 h7 h2⟩

theorem f5_res {O : BitVec 64} {p0hp h0 : Nat} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h : F5 O p0hp h0 m) (h1 : x ≠ outN) (h2 : x ≠ nN) (h3 : x ≠ dnN) (h4 : x ≠ tgN)
    (h5 : x ≠ markN) (h6 : x ≠ sizeN) (h7 : x ≠ bufN) :
    F5 O p0hp h0 (m.resVarEq (x, o)) :=
  ⟨f4_res h.1 h1 h2 h3 h4 h5 h6 h7, mc2_res h.2 h7 h2⟩

def MerkPre (h0 : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ O : BitVec 64, argW vs 3 = some O ∧ h0 ≤ O.toNat ∧ O.toNat ≤ 2 ^ 60

def MerkPost (vs : List (ValueHOL 64)) (_ : ValueHOL 64) : Prop :=
  ∀ O : BitVec 64, argW vs 3 = some O → O.toNat + 32 ≤ domTop + 64

theorem awSpec_merkleize {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) :
    AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v) := by
  refine awSpec_of_hoareG (PV := MerkPost) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, Lm, Ot, rfl, hA', hB', hC', hD', hla, hlb, hlc, hld⟩ :=
    Bn.lookupCode_four code_merkleize (by decide) hl
  obtain ⟨P0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨L0, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hs62 : domTop < 2 ^ 62 := by decide
  have hHE : heapEnd < 2 ^ 60 := by decide
  have hHEv : heapEnd = 2952790016 := rfl
  refine hoareG_conseq (P := APre a (F0 O))
    (Q := AQ a (fun _ => True) (MerkPost [.val (.word P0), .val (.word N0), .val (.word L0),
      .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact hld, bd_wide (by rw [hloc]; exact hlb)⟩)
    (fun _ _ _ _ h => h)
  unfold merkBody
  have hpure := fun (f : MlS) (hf : FootRet σ X f (fun _ => True) (fun _ _ => False) (fun _ _ => True)) =>
    asp_of_footRet hK hf (fun vs x hx => hx.elim)
  -- dl, dn, target
  refine hoareG_decCallAs' hK (hpure _ (footRet_ceil_log2 hC)) (Lk := F0 O) (L' := fun _ _ => False)
    (fun _ _ _ _ _ _ => trivial) (fun s vs v st hL hvs hRet hsh => ?_) ?_ (fun _ _ _ h => h.elim)
  · exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1, bd_upd (by decide) hL.2⟩
  intro s
  refine hoareG_decCallAs' hK (hpure _ (footRet_ceil_log2 hC))
    (Lk := fun m => F0 O m ∧ Bd m dnN 0 WW) (L' := fun _ _ => False)
    (fun _ _ _ _ _ _ => trivial) (fun s vs v st hL hvs hRet hsh => ?_) ?_ (fun _ _ _ h => h.elim)
  · obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1, bd_upd (by decide) hL.2⟩,
      bd_wd _ _ _⟩
  intro s2
  refine hoareG_decCallAs' hK (hpure _ (footRet_max hC)) (Lk := F1 O) (L' := fun _ _ => False)
    (fun _ _ _ _ _ _ => trivial) (fun s vs v st hL hvs hRet hsh => ?_) ?_ (fun _ _ _ h => h.elim)
  · obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1, bd_upd (by decide) hL.1.2⟩,
      bd_upd (by decide) hL.2, bd_wd _ _ _⟩
  intro s3
  refine hoareG_seqA (L2 := F1 O) (hoareG_iteA ?_ (hoareG_skipA fun m h => h)) ?_
  · refine hoareG_seqA (L2 := fun m => F1 O m ∧ O.toNat + 32 ≤ domTop + 64)
      (hoareG_callAs hK (asp_memcpy hK hC hA hT) ?_ ?_) ?_
    · intro s4 hs4 hP4 vs hvs callee
      obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
      rw [ev_lw hP4.2.1.1] at e1
      cases e1
      rw [ev_cw] at e3
      cases e3
      exact ⟨O, BitVec.ofNat 64 32, rfl, rfl, by omega, by omega⟩
    · intro s4 vs v st hL hvs hRet
      obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
      rw [ev_lw hL.1.1] at e1
      cases e1
      rw [ev_cw] at e3
      cases e3
      refine ⟨hL, ?_⟩
      have := hRet O (BitVec.ofNat 64 32) rfl rfl
      simp only [BitVec.toNat_ofNat] at this
      omega
    · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
        cases hO'
        exact hL.2)
  unfold merkRest
  -- mark
  refine hoareG_decCallAs' hK (asp_mark hK hC) (Lk := F2 O p.hp) (L' := fun _ _ => False)
    ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨f1_upd hL (by decide) (by decide) (by decide) (by decide), w,
      lookup_update_self _ _ _, h1, h2, h3⟩
  intro s4
  -- size = 1 << dn
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s5 hs5 hL5 v5 hv5 hsh5
  obtain ⟨Sz, rfl⟩ := val_of_shapeEq_one hsh5
  refine hoareG_preA (L' := F3 O p.hp) ?_ (fun m hm => by
    subst hm
    exact ⟨f2_upd hL5 (by decide) (by decide) (by decide) (by decide) (by decide),
      bd_wd _ _ _⟩)
  -- buf = alloc(size * 32)
  refine hoareG_decCallAs' hK (asp_alloc hK hC) (Lk := F4 O p.hp h0) (L' := fun _ _ => False)
    ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    obtain ⟨Z, hz, -, -⟩ := hP.2.2
    rw [evs_cons (ev_mul2 (ev_lw hz) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨f3_upd hL (by decide) (by decide) (by decide) (by decide) (by decide) (by decide),
      bd_new _ _ _ hq1 (by omega)⟩
  intro s6
  -- memcpy(buf, p, n * 32)
  refine hoareG_seqA (L2 := F5 O p.hp h0)
    (hoareG_callAs hK (asp_memcpy hK hC hA hT) ?_ ?_) ?_
  · intro s7 hs7 hP7 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    obtain ⟨Bb, hb, h1, h2⟩ := hP7.2.2
    obtain ⟨Nn, hn, -, -⟩ := hP7.2.1.1.1.1.2
    rw [ev_lw hb] at e1
    cases e1
    rw [ev_mul2 (ev_lw hn) (ev_cw _ 32)] at e3
    cases e3
    exact ⟨Bb, _, rfl, rfl, by omega, by omega⟩
  · intro s7 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    obtain ⟨Bb, hb, h1, h2⟩ := hL.2
    obtain ⟨Nn, hn, -, -⟩ := hL.1.1.1.1.2
    rw [ev_lw hb] at e1
    cases e1
    rw [ev_mul2 (ev_lw hn) (ev_cw _ 32)] at e3
    cases e3
    exact ⟨hL, Bb, Nn, hb, hn, hRet Bb _ rfl rfl⟩
  -- memzero(buf + n * 32, (size - n) * 32)
  refine hoareG_seqA (L2 := F5 O p.hp h0)
    (hoareG_callAs hK (asp_memzero hK hC hA hT) ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s7 hs7 hP7 vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨Bb, Nn, hb, hn, hbd⟩ := hP7.2.2
    obtain ⟨Bb2, hb2, g1, g2⟩ := hP7.2.1.2
    obtain ⟨Sz, hsz, -, -⟩ := hP7.2.1.1.2
    rw [hb] at hb2
    cases hb2
    rw [ev_add2 (ev_lw hb) (ev_mul2 (ev_lw hn) (ev_cw _ 32))] at e1
    cases e1
    rw [ev_mul2 (ev_sub2 (ev_lw hsz) (ev_lw hn)) (ev_cw _ 32)] at e2
    cases e2
    have hs64 : domTop + 64 < 2 ^ 62 := by decide
    have hDa : (Bb + Nn * BitVec.ofNat 64 32).toNat = Bb.toNat + (Nn * BitVec.ofNat 64 32).toNat := by
      rcases hbd with h | h
      · rw [toNat_add2] <;> omega
      · rw [toNat_add2] <;> omega
    exact ⟨Bb + Nn * BitVec.ofNat 64 32, _, rfl, rfl, by omega, by rcases hbd with h | h <;> omega⟩
  -- cur = size
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s8 hs8 hL8 v8 hv8 hsh8
  obtain ⟨Sz8, hsz8, -, -⟩ := hL8.1.1.2
  rw [ev_lw hsz8] at hv8
  cases hv8
  refine hoareG_preA (L' := fun m => F5 O p.hp h0 m ∧ Bd m curN 0 WW) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨f4_upd hL8.1 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide), mc2_upd hL8.2 (by decide) (by decide)⟩, bd_wd _ _ _⟩)
  have hdt : domTop = 1099511627776 := by decide
  have hJ : ∀ (J : BitVec 64), J.toNat ≤ (domTop + 7) / 32 + 1 → J.toNat * 32 < 2 ^ 64 := by
    intro J hJ
    omega
  -- the outer loop
  have hf5 : ∀ (m m' : Locals), (F5 O p.hp h0 m' ∧ Bd m' curN 0 WW) → ∀ x : MlS,
      x ≠ outN → x ≠ nN → x ≠ dnN → x ≠ tgN → x ≠ markN → x ≠ sizeN → x ≠ bufN → x ≠ curN →
      (F5 O p.hp h0 (m'.resVarEq (x, m.lookup x)) ∧ Bd (m'.resVarEq (x, m.lookup x)) curN 0 WW) :=
    fun m m' h x h1 h2 h3 h4 h5 h6 h7 h8 => ⟨f5_res h.1 h1 h2 h3 h4 h5 h6 h7, bd_res h8 h.2⟩
  refine hoareG_seqA (L2 := fun m => F5 O p.hp h0 m ∧ Bd m curN 0 WW) ?_ ?_
  · refine hoareG_whileA hK (J := fun m => F5 O p.hp h0 m ∧ Bd m curN 0 WW) ?_ (fun s _ h _ => h)
    refine hoareG_pre (P := APre a (fun m => F5 O p.hp h0 m ∧ Bd m curN 0 WW)) ?_ (fun s _ h => h.1)
    unfold merkOuter
    -- half
    refine hoareG_decA hK (L' := fun _ m' => F5 O p.hp h0 m' ∧ Bd m' curN 0 WW) ?_
      (fun m m' _ h => hf5 m m' h _ (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide))
    intro s9 hs9 hL9 v9 hv9 hsh9
    obtain ⟨Hf, rfl⟩ := val_of_shapeEq_one hsh9
    refine hoareG_preA (L' := fun m => (F5 O p.hp h0 m ∧ Bd m curN 0 WW) ∧ Bd m halfN 0 WW) ?_
      (fun m hm => by
        subst hm
        exact ⟨⟨f5_upd hL9.1 (by decide) (by decide) (by decide) (by decide) (by decide)
          (by decide) (by decide), bd_upd (by decide) hL9.2⟩, bd_wd _ _ _⟩)
    -- j = 0
    refine hoareG_decA hK (L' := fun _ m' => F5 O p.hp h0 m' ∧ Bd m' curN 0 WW) ?_
      (fun m m' _ h => hf5 m m' h _ (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide))
    intro s10 hs10 hL10 v10 hv10 hsh10
    rw [ev_cw] at hv10
    cases hv10
    refine hoareG_preA (L' := fun m => ((F5 O p.hp h0 m ∧ Bd m curN 0 WW) ∧ Bd m halfN 0 WW) ∧
        Bd m jN 0 ((domTop + 7) / 32 + 1)) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨f5_upd hL10.1.1 (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide), bd_upd (by decide) hL10.1.2⟩, bd_upd (by decide) hL10.2⟩,
        bd_new _ _ _ (by simp) (by simp)⟩)
    refine hoareG_seqA (L2 := fun m => ((F5 O p.hp h0 m ∧ Bd m curN 0 WW) ∧ Bd m halfN 0 WW) ∧
        Bd m jN 0 ((domTop + 7) / 32 + 1)) ?_ ?_
    · refine hoareG_whileA hK (J := fun m => ((F5 O p.hp h0 m ∧ Bd m curN 0 WW) ∧
        Bd m halfN 0 WW) ∧ Bd m jN 0 ((domTop + 7) / 32 + 1)) ?_ (fun s _ h _ => h)
      refine hoareG_pre (P := APre a (fun m => ((F5 O p.hp h0 m ∧ Bd m curN 0 WW) ∧
        Bd m halfN 0 WW) ∧ Bd m jN 0 ((domTop + 7) / 32 + 1))) ?_ (fun s _ h => h.1)
      unfold merkInner
      refine hoareG_seqA (L2 := fun m => (((F5 O p.hp h0 m ∧ Bd m curN 0 WW) ∧
        Bd m halfN 0 WW) ∧ Bd m jN 0 ((domTop + 7) / 32 + 1)) ∧ Bd m jN 0 ((domTop + 7) / 32))
        (hoareG_callAs hK (asp_sha hK hC hA hT) ?_ ?_) ?_
      · intro s11 hs11 hP11 vs hvs callee
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        obtain ⟨Bb, hb, g1, g2⟩ := hP11.2.1.1.1.1.2
        obtain ⟨Jj, hj, -, g4⟩ := hP11.2.2
        rw [ev_add2 (ev_lw hb) (ev_mul2 (ev_lw hj) (ev_cw _ 32))] at e3
        cases e3
        have hm : (Jj * BitVec.ofNat 64 32).toNat = Jj.toNat * 32 :=
          toNat_mulc (by omega) (by omega)
        exact ⟨Bb + Jj * BitVec.ofNat 64 32, rfl, by rw [toNat_add2 (by omega), hm]; omega,
          by rw [toNat_add2 (by omega), hm]; omega⟩
      · intro s11 vs v st hL hvs hRet
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        obtain ⟨Bb, hb, g1, g2⟩ := hL.1.1.1.1.2
        obtain ⟨Jj, hj, -, g4⟩ := hL.2
        rw [ev_add2 (ev_lw hb) (ev_mul2 (ev_lw hj) (ev_cw _ 32))] at e3
        cases e3
        have hm : (Jj * BitVec.ofNat 64 32).toNat = Jj.toNat * 32 :=
          toNat_mulc (by omega) (by omega)
        have hI := hRet (Bb + Jj * BitVec.ofNat 64 32) rfl
        unfold InD at hI
        rw [toNat_add2 (by omega), hm] at hI
        exact ⟨hL, Jj, hj, Nat.zero_le _, by omega⟩
      · refine hoareG_assignA hK fun s11 _ hL11 v11 hv11 => ?_
        obtain ⟨Jj, hj, -, g4⟩ := hL11.2
        rw [ev_add2 (ev_lw hj) (ev_cw _ 1)] at hv11
        cases hv11
        have hJ1 : (Jj + BitVec.ofNat 64 1).toNat = Jj.toNat + 1 := toNat_addc (by omega)
        exact ⟨⟨⟨f5_upd hL11.1.1.1.1 (by decide) (by decide) (by decide) (by decide) (by decide)
          (by decide) (by decide), bd_upd (by decide) hL11.1.1.1.2⟩, bd_upd (by decide) hL11.1.1.2⟩,
          bd_new _ _ _ (by omega) (by omega)⟩
    · refine hoareG_assignA hK fun s11 _ hL11 v11 hv11 => ?_
      obtain ⟨Hh, hh, -, -⟩ := hL11.1.2
      rw [ev_lw hh] at hv11
      cases hv11
      exact ⟨f5_upd hL11.1.1.1 (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide), bd_wd _ _ _⟩
  · -- d = dn
    refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s12 hs12 hL12 v12 hv12 hsh12
    obtain ⟨Dn, hdn, -, -⟩ := hL12.1.1.1.1.1.2.1
    rw [ev_lw hdn] at hv12
    cases hv12
    refine hoareG_preA (L' := fun m => F5 O p.hp h0 m ∧ Bd m dN 0 WW) ?_ (fun m hm => by
      subst hm
      exact ⟨f5_upd hL12.1 (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide), bd_wd _ _ _⟩)
    refine hoareG_seqA (L2 := fun m => F5 O p.hp h0 m ∧ Bd m dN 0 WW) ?_ ?_
    · refine hoareG_whileA hK (J := fun m => F5 O p.hp h0 m ∧ Bd m dN 0 WW) ?_ (fun s _ h _ => h)
      refine hoareG_pre (P := APre a (fun m => F5 O p.hp h0 m ∧ Bd m dN 0 WW)) ?_ (fun s _ h => h.1)
      unfold merkTail
      refine hoareG_seqA (L2 := fun m => F5 O p.hp h0 m ∧ Bd m dN 0 WW)
        (hoareG_callAs hK (asp_sha hK hC hA hT) ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
      · intro s13 hs13 hP13 vs hvs callee
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        obtain ⟨Bb, hb, g1, g2⟩ := hP13.2.1.1.2
        rw [ev_lw hb] at e3
        cases e3
        exact ⟨Bb, rfl, by omega, by omega⟩
      · refine hoareG_assignA hK fun s13 _ hL13 v13 hv13 => ?_
        obtain ⟨Dd, hd, -, -⟩ := hL13.2
        rw [ev_add2 (ev_lw hd) (ev_cw _ 1)] at hv13
        cases hv13
        exact ⟨f5_upd hL13.1 (by decide) (by decide) (by decide) (by decide) (by decide)
          (by decide) (by decide), bd_wd _ _ _⟩
    · -- memcpy(out, buf, 32); heap_release(mark); return 0
      refine hoareG_seqA (L2 := fun m => (F5 O p.hp h0 m ∧ Bd m dN 0 WW) ∧ O.toNat + 32 ≤ domTop + 64)
        (hoareG_callAs hK (asp_memcpy hK hC hA hT) ?_ ?_) ?_
      · intro s13 hs13 hP13 vs hvs callee
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        rw [ev_lw hP13.2.1.1.1.1.1.1.1] at e1
        cases e1
        rw [ev_cw] at e3
        cases e3
        exact ⟨O, BitVec.ofNat 64 32, rfl, rfl, by omega, by omega⟩
      · intro s13 vs v st hL hvs hRet
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        rw [ev_lw hL.1.1.1.1.1.1.1] at e1
        cases e1
        rw [ev_cw] at e3
        cases e3
        refine ⟨hL, ?_⟩
        have := hRet O (BitVec.ofNat 64 32) rfl rfl
        simp only [BitVec.toNat_ofNat] at this
        omega
      · refine hoareG_seqA (L2 := fun _ => O.toNat + 32 ≤ domTop + 64)
          (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
        · intro s14 hs14 hP14 vs hvs callee
          obtain ⟨w, hw, h1, h2, h3⟩ := hP14.2.1.1.1.1.1.2
          rw [evs_cons (ev_lw hw) evs_nil] at hvs
          cases hvs
          exact ⟨w, rfl, h1, h2, h3⟩
        · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
            cases hO'
            exact hL)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_merkleize
