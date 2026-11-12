import InitECandidate.Solver.MemSafe.Aw.Reb

set_option autoImplicit false

/-!
# Target F, part 3: `validate_headers`
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

def blockErrN : MlS := nm "BlockErr"
def vhsN : MlS := nm "hs"
def vhashN : MlS := nm "hashes"
def veqN : MlS := nm "eq"

def vhA1 : ExpHOL 64 := .load .one (.op .add [lv arrN, .panop .mul [lv iN, cw 16]])
def vhA2 : ExpHOL 64 := .load .one (.op .add [lv arrN, .panop .mul [lv iN, cw 16], cw 8])
def vhHs : ExpHOL 64 := .op .add [lv vhsN, .panop .mul [lv iN, cw 8]]
def vhHash : ExpHOL 64 := .op .add [lv vhashN, .panop .mul [lv iN, cw 32]]

def vhLoop1 : ProgHOL 64 :=
  .decCall dhN .one (nm "decode_header") [vhA1, vhA2]
    (.seq (.store vhHs (lv dhN))
      (.seq (callD (nm "keccak256") [vhA1, vhA2, vhHash])
        (.assign .local iN (.op .add [lv iN, cw 1]))))

def vhLoop2 : ProgHOL 64 :=
  .decCall veqN .one (nm "memeq")
    [.load .one (.op .add [.load .one vhHs, cw 8]),
      .op .add [lv vhashN, .panop .mul [.op .sub [lv iN, cw 1], cw 32]], cw 32]
    (.seq (.ite (.cmp .equal (lv veqN) (cw 0)) (.raise blockErrN (cw 2)) .skip)
      (.assign .local iN (.op .add [lv iN, cw 1])))

def vhBody : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (cw 256) (lv nN)) (.raise blockErrN (cw 1)) .skip)
    (.decCall vhsN .one (nm "alloc") [.op .add [.panop .mul [lv nN, cw 8], cw 8]]
      (.decCall vhashN .one (nm "alloc") [.op .add [.panop .mul [lv nN, cw 32], cw 32]]
        (.dec iN .one (cw 0)
          (.seq (.while (.cmp .less (lv iN) (lv nN)) vhLoop1)
            (.seq (.assign .local iN (cw 1))
              (.seq (.while (.cmp .less (lv iN) (lv nN)) vhLoop2)
                (.return (.rstruct [lv vhsN, lv vhashN]))))))))

theorem code_validate_headers : guestCode (nm "validate_headers") =
    some ([(arrN, .one), (nN, .one)], vhBody, .comb [.one, .one]) := by
  have h : fnEntry Guest.Software.guestFn_validate_headers =
      (nm "validate_headers", [(arrN, .one), (nN, .one)], vhBody, .comb [.one, .one]) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 231) (by decide)) ⟨_, rfl⟩ h

def VhPost (p : Ptrs) (v : ValueHOL 64) : Prop :=
  ∃ Hs Hh : BitVec 64, v = .rStruct [.val (.word Hs), .val (.word Hh)] ∧ p.hp ≤ Hs.toNat ∧
    p.hp ≤ Hh.toNat

theorem hoareG_rebase {a : AwE σ} {p'' : Ptrs} (hm : a.p0.Mono p'') {P : State σ → Prop}
    {c : ProgHOL 64} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : HoareG σ X P c (AQ (a.rebase p'') L Ret)) : HoareG σ X P c (AQ a L Ret) :=
  hoareG_conseq h (fun _ _ ht => ht) (fun r t _ _ hq =>
    ⟨hq.1, fun hr => ⟨awInv_unrebase hm (hq.2.1 hr).1, (hq.2.1 hr).2⟩,
      fun v hv => ⟨awInv_unrebase hm (hq.2.2 v hv).1, (hq.2.2 v hv).2⟩⟩)

def VB (Ar N Hs Hh : BitVec 64) (m : Locals) : Prop :=
  Lk arrN Ar m ∧ Lk nN N m ∧ Lk vhsN Hs m ∧ Lk vhashN Hh m

theorem vb_upd {Ar N Hs Hh : BitVec 64} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ arrN) (h2 : x ≠ nN) (h3 : x ≠ vhsN) (h4 : x ≠ vhashN) (h : VB Ar N Hs Hh m) :
    VB Ar N Hs Hh (m.update (x, v)) :=
  ⟨lk_updo h1 h.1, lk_updo h2 h.2.1, lk_updo h3 h.2.2.1, lk_updo h4 h.2.2.2⟩

theorem vb_res {Ar N Hs Hh : BitVec 64} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ arrN) (h2 : x ≠ nN) (h3 : x ≠ vhsN) (h4 : x ≠ vhashN) (h : VB Ar N Hs Hh m) :
    VB Ar N Hs Hh (m.resVarEq (x, o)) :=
  ⟨lk_res h1 h.1, lk_res h2 h.2.1, lk_res h3 h.2.2.1, lk_res h4 h.2.2.2⟩

theorem awSpec_validate_headers {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hDH : AWSpec σ X C H (nm "decode_header") [] (fun _ _ _ => True)
      (fun _ s v _ => ∀ p, ptrsOf s = some p → DhPost p v))
    (hKec : CSumm σ X C H (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ [])
    (hMemeq : RdSpec σ X (nm "memeq")) (hWS : ScalarGlob C wsN 640) :
    AWSpec σ X C H (nm "validate_headers") [] (fun _ _ _ => True)
      (fun _ s v _ => ∀ p, ptrsOf s = some p → VhPost p v) := by
  refine awSpec_of_hoareG2 (PV := fun _ p v => VhPost p v) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_validate_headers (by decide) hl
  obtain ⟨Ar, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hHE : heapEnd = 2952790016 := rfl
  let L0 : Locals → Prop := fun m => Lk arrN Ar m ∧ Lk nN N m
  refine hoareG_conseq (P := APre a L0) (Q := AQ a (fun _ => True) (VhPost p)) ?_
    (fun t _ ht => by subst ht; exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hla, hlb⟩⟩)
    (fun _ _ _ _ h => h)
  unfold vhBody
  let L1 : Locals → Prop := fun m => L0 m ∧ N.toNat ≤ 256
  refine hoareG_seqA (L2 := L1) (hoareG_iteC (hoareG_pre hoareG_raiseA (fun _ _ h => h.1)) ?_) ?_
  · refine hoareG_pre (hoareG_skipA fun m h => h) (fun s _ h => ⟨h.1.1, h.1.2, ?_⟩)
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false h.2
    rw [ev_cw] at hx
    cases hx
    rw [ev_lw h.1.2.2] at hy
    cases hy
    have := lower_iff (x := BitVec.ofNat 64 256) (y := N)
    by_contra hh
    have h2 : (BitVec.ofNat 64 256).toNat < N.toNat := by
      have : (BitVec.ofNat 64 256).toNat = 256 := by decide
      omega
    rw [hxy] at this
    exact absurd (this.mpr h2) (by decide)
  -- hs
  refine hoareG_decCallAs' hK (asp_alloc2 hK hC)
    (Lk := fun m => L1 m ∧ ∃ Hs : BitVec 64, Lk vhsN Hs m ∧ a.p0.hp ≤ Hs.toNat ∧ Hs.toNat ≤ heapEnd)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => False.elim h)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_add2 (ev_mul2 (ev_lw hP.2.1.2) (ev_cw _ 8)) (ev_cw _ 8)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨⟨n', q, p'', hvs', hvq, hq1, hq2, hp'', hq3, hq4⟩, q', hq', hq5⟩ := hRet
    cases hvq
    cases hq'
    exact ⟨⟨⟨lk_updo (by decide) hL.1.1, lk_updo (by decide) hL.1.2⟩, hL.2⟩, q, lk_new _ _ _, hq5,
      by omega⟩
  intro s1
  let Lk1 : Locals → Prop := fun m => L1 m ∧ ∃ Hs : BitVec 64, Lk vhsN Hs m ∧ a.p0.hp ≤ Hs.toNat ∧
    Hs.toNat ≤ heapEnd
  refine hoareG_decCallAsP hK (asp_alloc2 hK hC) (P := APre a Lk1) (L := Lk1)
    (Lout := fun _ => False) (L' := fun _ _ => False) (fun _ _ h => h) ?_ ?_
    (fun _ _ _ h => False.elim h)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_add2 (ev_mul2 (ev_lw hP.2.1.1.2) (ev_cw _ 32)) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hs' hL hvs hI hRet hsh
    obtain ⟨⟨n', q, p'', hvs', hvq, hq1, hq2, hp'', hq3, hq4⟩, q', hq', hq5⟩ := hRet
    cases hvq
    cases hq'
    obtain ⟨⟨hL0, hN256⟩, Hs, hHs, hHs', hHsE⟩ := hL
    have hmono : a.p0.Mono p'' := by
      obtain ⟨Γ', p', hG, hp', e1, e2, e3, e4, -⟩ := hI
      rw [hp''] at hp'
      cases hp'
      exact e4
    have hord : p''.Ordered := by
      obtain ⟨Γ', p', hG, hp', -⟩ := hI
      obtain ⟨q2, hq2', ho, -⟩ := hG
      rw [hp''] at hq2'
      cases hq2'
      exact ho
    have hK2 := awOK_rebase hK hord hmono
    rw [evs_cons (ev_add2 (ev_mul2 (ev_lw hL0.2) (ev_cw _ 32)) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    cases hvs'
    have hN1 : (N * BitVec.ofNat 64 32).toNat = N.toNat * 32 := toNat_mulc (by omega) (by omega)
    have hN2 : (N * BitVec.ofNat 64 32 + BitVec.ofNat 64 32).toNat = N.toNat * 32 + 32 := by
      rw [toNat_addc (by rw [hN1]; omega), hN1]
    rw [hN2] at hq3
    have hSE : p''.hp ≤ heapEnd := by
      have := hord
      unfold Ptrs.Ordered at this
      omega
    refine hoareG_rebase hmono (hoareG_pre (P := APre (a.rebase p'') (VB Ar N Hs q)) ?key
      (fun t _ ht => ?pre))
    case pre =>
      subst ht
      have hI2 : AwInv a (setVarHOLFinite vhashN (.val (.word q)) { st with locals := s.locals }) :=
        awInv_same hK hI rfl rfl rfl rfl
      refine ⟨awInv_rebase hK hI2 ?_, ?_⟩
      · rw [AllocImpl.ptrsOf_congr (show (setVarHOLFinite vhashN (.val (.word q))
          { st with locals := s.locals }).globals = st.globals from rfl)]
        exact hp''
      · exact ⟨lk_updo (by decide) hL0.1, lk_updo (by decide) hL0.2, lk_updo (by decide) hHs,
          lk_new _ _ _⟩
    case key =>
      have hHhE : q.toNat ≤ heapEnd := by omega
      have hh0 : a.h0 ≤ a.p0.hp := hK.hle
      have hh1 : h0 ≤ p.hp := hK.hle
      have hH1 : p.hp ≤ Hs.toNat := hHs'
      have hq6 : p.hp ≤ q.toNat := hq5
      have hq7 : h0 ≤ q.toNat := hq1
      have hDH2 := asp_of_aw2 hK2 hDH (fun g hg => absurd hg (by simp))
        (Ret := fun _ _ _ => True) (fun _ _ _ _ _ _ => trivial)
      have hKec2 := asp_of_cs hK2 hKec rfl (fun g hg => absurd hg (by simp))
      have hMem2 := asp_of_rd hK2 hWS hMemeq
      let J1 : Locals → Prop := fun m => VB Ar N Hs q m ∧ ∃ I : BitVec 64, Lk iN I m ∧
        I.toNat ≤ N.toNat
      -- i = 0
      refine hoareG_decA hK2 (L' := fun _ _ => False) ?_ (fun _ _ _ h => False.elim h)
      intro s2 hs2 hL2 v2 hv2 hsh2
      rw [ev_cw] at hv2
      cases hv2
      refine hoareG_preA (L' := J1) ?_ (fun m hm => by
        subst hm
        exact ⟨⟨lk_updo (by decide) hL2.1, lk_updo (by decide) hL2.2.1, lk_updo (by decide) hL2.2.2.1,
          lk_updo (by decide) hL2.2.2.2⟩, BitVec.ofNat 64 0, lk_new _ _ _, by simp⟩)
      refine hoareG_seqA (L2 := J1) (hoareG_whileA hK2 (J := J1) ?_ (fun s _ h _ => h)) ?_
      · refine hoareG_loopPre2 (iN' := iN) (nN' := nN) ?_ ?_
        · unfold vhLoop1
          let Lx : Locals → Prop := fun m => J1 m ∧ ∃ I : BitVec 64, Lk iN I m ∧ I.toNat < N.toNat
          refine hoareG_pre (hoareG_decCallAs' hK2 hDH2 (L := Lx) (Lk := Lx)
            (L' := fun _ m' => J1 m') (fun _ _ _ _ _ _ => trivial)
            (fun s vs v st hL hvs hRet hsh => ?_) (fun s => ?_) (fun m m' _ h => ?_))
            (fun s _ h => ⟨h.1, h.2.1, ?_⟩)
          · obtain ⟨⟨hb, I, hI, i1⟩, I', hI', i2⟩ := hL
            exact ⟨⟨vb_upd (by decide) (by decide) (by decide) (by decide) hb, I,
              lk_updo (by decide) hI, i1⟩, I', lk_updo (by decide) hI', i2⟩
          · have hLx : ∀ m, Lx m → J1 m ∧ ∃ I : BitVec 64, Lk iN I m ∧ I.toNat < N.toNat := fun m h => h
            refine hoareG_seqA (L2 := Lx) (hoareG_storeAD hK2 hT ?_)
              (hoareG_seqA (L2 := Lx) (hoareG_callAs hK2 hKec2 ?_ (fun _ _ _ _ hL _ _ => hL)) ?_)
            · intro s' hs' hL w hw
              obtain ⟨⟨hb, I, hI, i1⟩, I', hI', i2⟩ := hL
              unfold vhHs at hw
              rw [ev_add2 (ev_lw hb.2.2.1) (ev_mul2 (ev_lw hI) (ev_cw _ 8))] at hw
              cases hw
              have hm : (I * BitVec.ofNat 64 8).toNat = I.toNat * 8 := toNat_mulc (by omega) (by omega)
              show h0 ≤ (Hs + I * BitVec.ofNat 64 8).toNat
              rw [toNat_add2 (by rw [hm]; omega), hm]
              omega
            · intro s' hs' hP vs hvs callee
              obtain ⟨hI0, ⟨hb, I, hI, i1⟩, I', hI', i2⟩ := hP
              obtain ⟨v1, v2, v3, rfl, f1, f2, f3⟩ := evs_three hvs
              unfold vhHash at f3
              rw [ev_add2 (ev_lw hb.2.2.2) (ev_mul2 (ev_lw hI) (ev_cw _ 32))] at f3
              cases f3
              have e1 := lk_inj hI' hI
              rw [e1] at i2
              obtain ⟨Γ', p', hG', hp', e1', e2', e3', e4', -⟩ := hI0
              have hm : (I * BitVec.ofNat 64 32).toNat = I.toNat * 32 := toNat_mulc (by omega) (by omega)
              have hW : (q + I * BitVec.ofNat 64 32).toNat = q.toNat + I.toNat * 32 := by
                rw [toNat_add2 (by rw [hm]; omega), hm]
              have hmono' : p''.hp ≤ p'.hp := e4'.1
              refine ⟨rfl, p', hp', fun i pt v hpt hv => ?_⟩
              rcases i with _ | _ | _ | i
              · simp at hpt
                subst hpt
                trivial
              · simp at hpt
                subst hpt
                trivial
              · simp at hpt hv
                subst hpt
                subst hv
                refine ⟨q + I * BitVec.ofNat 64 32, rfl, ?_, ?_⟩
                · show h0 ≤ (q + I * BitVec.ofNat 64 32).toNat
                  rw [hW]; omega
                · rw [hW]
                  have : I.toNat * 32 + 32 ≤ N.toNat * 32 := by omega
                  omega
              · simp at hpt
            · refine hoareG_assignA hK2 fun s' _ hL v hv => ?_
              obtain ⟨⟨hb, I, hI, i1⟩, I', hI', i2⟩ := hL
              rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
              cases hv
              have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc (by omega)
              have e1 := lk_inj hI' hI
              rw [e1] at i2
              exact ⟨vb_upd (by decide) (by decide) (by decide) (by decide) hb, _, lk_new _ _ _,
                by rw [hI1]; omega⟩
          · obtain ⟨hb, I, hI, i1⟩ := h
            exact ⟨vb_res (by decide) (by decide) (by decide) (by decide) hb, I,
              lk_res (by decide) hI, i1⟩
          · obtain ⟨⟨hb, I, hI, i1⟩, I', N', hI', hN', i2, i3⟩ := h.2
            have e1 := lk_inj hI' hI
            have e2 := lk_inj hN' hb.2.1
            subst e2
            rw [e1] at i2
            exact ⟨I, hI, i2⟩
        · intro m ⟨hb, I, hI, i1⟩
          exact ⟨I, N, hI, hb.2.1, by omega⟩
      · let J2 : Locals → Prop := fun m => VB Ar N Hs q m ∧ ∃ I : BitVec 64, Lk iN I m ∧
          I.toNat ≤ 256
        refine hoareG_seqA (L2 := J2) (hoareG_assignA hK2 fun s' _ hL v hv => ?_) ?_
        · rw [ev_cw] at hv
          cases hv
          exact ⟨vb_upd (by decide) (by decide) (by decide) (by decide) hL.1, _, lk_new _ _ _, by simp⟩
        refine hoareG_seqA (L2 := J2) (hoareG_whileA hK2 (J := J2) ?_ (fun s _ h _ => h)) ?_
        · refine hoareG_loopPre2 (iN' := iN) (nN' := nN) ?_ ?_
          · unfold vhLoop2
            let Lx2 : Locals → Prop := fun m => J2 m ∧ ∃ I : BitVec 64, Lk iN I m ∧ I.toNat < N.toNat
            refine hoareG_pre (hoareG_decCallAs' hK2 hMem2 (L := Lx2) (Lk := Lx2)
              (L' := fun _ m' => J2 m') (fun _ _ _ _ _ _ => trivial)
              (fun s vs v st hL hvs hRet hsh => ?_) (fun s => ?_) (fun m m' _ h => ?_))
              (fun s _ h => ⟨h.1, h.2.1, ?_⟩)
            · obtain ⟨⟨hb, I, hI, i1⟩, I', hI', i2⟩ := hL
              exact ⟨⟨vb_upd (by decide) (by decide) (by decide) (by decide) hb, I,
                lk_updo (by decide) hI, i1⟩, I', lk_updo (by decide) hI', i2⟩
            · refine hoareG_seqA (L2 := Lx2) (hoareG_iteA hoareG_raiseA (hoareG_skipA fun m h => h)) ?_
              refine hoareG_assignA hK2 fun s' _ hL v hv => ?_
              obtain ⟨⟨hb, I, hI, i1⟩, I', hI', i2⟩ := hL
              rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
              cases hv
              have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc (by omega)
              have e1 := lk_inj hI' hI
              rw [e1] at i2
              exact ⟨vb_upd (by decide) (by decide) (by decide) (by decide) hb, _, lk_new _ _ _,
                by rw [hI1]; omega⟩
            · obtain ⟨hb, I, hI, i1⟩ := h
              exact ⟨vb_res (by decide) (by decide) (by decide) (by decide) hb, I,
                lk_res (by decide) hI, i1⟩
            · obtain ⟨⟨hb, I, hI, i1⟩, I', N', hI', hN', i2, i3⟩ := h.2
              have e1 := lk_inj hI' hI
              have e2 := lk_inj hN' hb.2.1
              subst e2
              rw [e1] at i2
              exact ⟨I, hI, i2⟩
          · intro m ⟨hb, I, hI, i1⟩
            exact ⟨I, N, hI, hb.2.1, by omega⟩
        · refine hoareG_returnA hK2 (fun s' _ hL v hv => ?_)
          obtain ⟨hb, I, hI, i1⟩ := hL
          rw [ev_rstruct (evs_cons (ev_lw hb.2.2.1) (evs_cons (ev_lw hb.2.2.2) evs_nil))] at hv
          cases hv
          exact ⟨Hs, q, rfl, hH1, hq6⟩

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_validate_headers
