import InitECandidate.Solver.MemSafe.Dn.StepAd

set_option autoImplicit false

/-!
# `_decode_step`: the statements below the list split (stage 2b)

The facts carried below `sl = rlp_list_to_slices(...)`: `EA P N Ar cnt` (the entry slice `[P, P + N)` is
inside a `tVAL` object, the slice array `Ar` of `cnt` slices lies in it), and for the extension path the
nibble slice of the adopted `compact_to_nibbles` buffer (`NIn`).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

theorem brO_ext {p0 : Ptrs} {Γ Γ' : Gam} (he : Ext Γ Γ') {BR : BitVec 64} (h : BrO p0 Γ BR) :
    BrO p0 Γ' BR := by
  obtain ⟨o, ho, hb, ht, hfr⟩ := h
  obtain ⟨o', ho', hb', ht', -⟩ := he o ho
  exact ⟨o', ho', hb'.trans hb, ht'.trans ht, hfr⟩

/-- **The record of `scratch_alloc(88)`.** -/
theorem frE_of_alloc {a : Act σ} (haC : a.C = Types.guestC) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {R : BitVec 64}
    (co : CO a sg' vs Γ Γ' q q' s st (.returned (.val (.word R)))) (hg : sg'.grows = false)
    (hvs : vs = [.val (.word (BitVec.ofNat 64 88))])
    (hLc : Good (some (PanSemResultExact.returned (.val (.word R)))) → ∀ n p,
      vs = [.val (.word n)] → ptrsOf (callEntryStateHOLFinite s callee) = some p → p.Ordered →
      st.memory = (callEntryStateHOLFinite s callee).memory ∧
      (∀ g, g ≠ Region.scratch.global → st.globals.lookup g =
        (callEntryStateHOLFinite s callee).globals.lookup g) ∧
      ∃ p', ptrsOf st = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
        ∀ v, PanSemResultExact.returned (.val (.word R)) = .returned v → ∃ q0 : BitVec 64,
          v = .val (.word q0) ∧ q0.toNat % 8 = 0 ∧ Region.scratch.Live p' q0.toNat n.toNat ∧
          ∀ x, q0.toNat ≤ x → x < q0.toNat + n.toNat → ¬ p.Allocated x) :
    FrE a R Γ' q' ∧ heapEnd ≤ R.toNat := by
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
  have hord := heap_ord co.heap0
  obtain ⟨-, -, p', hp', hord', hmono, hret⟩ := hLc (by simp [Good]) _ q hvs hpe hord
  have hq' := co.heap.2.1
  rw [hp'] at hq'
  cases hq'
  obtain ⟨q0, hq0, h8, ⟨hl1, hl2⟩, hfree⟩ := hret _ rfl
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hq0
  subst hq0
  have h88 : (BitVec.ofNat 64 88).toNat = 88 := rfl
  rw [h88] at hl2 hfree
  have hse : scratchEnd < 2 ^ 64 := by decide
  refine ⟨⟨h8, by omega, fun y hy => ?_⟩, by have := hord'.2.2.1; have := hord'.2.2.2.1; omega⟩
  obtain ⟨y8, y1, y2⟩ := hy
  have hyR : R.toNat ≤ y.toNat := by omega
  have hnA : ¬ q.Allocated y.toNat := hfree _ hyR y2
  refine ⟨fun hin => ?_, fun hA => hnA (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 hA), ?_⟩
  · obtain ⟨p1, hp1, hord1, hL, -⟩ := co.heap0.1
    rw [co.heap0.2.1] at hp1
    cases hp1
    exact hnA (HtabEntries.alloc_of_inObj hord1 hL (co.nfp hg) hin)
  · unfold Ptrs.Allocated
    right; right
    exact ⟨by omega, by omega⟩

/-- The activation of `_decode_step`. -/
abbrev aDS (vs : List (ValueHOL 64)) (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) : Act σ :=
  actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dsSig [] vs s0 Γ0 p0

/-- Locals after `cn`: `p`, `n`, `arr` and `cn` are exact. -/
def LCn (P N Ar c0 c1 c2 : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "arr") = some (.val (.word Ar)) ∧
    m.lookup (nm "cn") = some (.rStruct [.val (.word c0), .val (.word c1), .val (.word c2)])

theorem scrAlloc_sp : ctorNames.contains (nm "scratch_alloc") = false := by decide_cbv

theorem ev_ldArr0' {s : State σ} {Ar : BitVec 64}
    (harr : s.locals.lookup (nm "arr") = some (.val (.word Ar))) (i : Nat) (hi : 16 * i + 8 < 2 ^ 64) :
    ∀ v, ev s (Spec.Mpt.Dec.ldArr0 i) = some v →
      v = .val (.word (rd s.memory (Ar + BitVec.ofNat 64 (16 * i)))) := by
  intro v hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lw harr) (ev_mul2 (ev_cw _ i) (ev_cw _ 16))] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  have : Ar + BitVec.ofNat 64 i * BitVec.ofNat 64 16 = Ar + BitVec.ofNat 64 (16 * i) := by
    congr 1
    apply BitVec.eq_of_toNat_eq
    simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]
    omega
  rw [this, Struct.mem_word s.memory _]

theorem w2_of_sh {v : ValueHOL 64} (h : shapeEqHOL (shapeOfHOLExact v) Spec.Mpt.Dec.sh2 = true) :
    ∃ c0 c1 : BitVec 64, v = .rStruct [.val (.word c0), .val (.word c1)] := by
  obtain ⟨ws, hl, rfl⟩ := Spec.eq_wv_of_shapeEq' (k := 2) h
  match ws, hl with
  | [c0, c1], _ => exact ⟨c0, c1, rfl⟩

theorem w3_of_sh {v : ValueHOL 64} (h : shapeEqHOL (shapeOfHOLExact v) Spec.Mpt.Dec.sh3 = true) :
    ∃ c0 c1 c2 : BitVec 64, v = .rStruct [.val (.word c0), .val (.word c1), .val (.word c2)] := by
  obtain ⟨ws, hl, rfl⟩ := Spec.eq_wv_of_shapeEq' (k := 3) h
  match ws, hl with
  | [c0, c1, c2], _ => exact ⟨c0, c1, c2, rfl⟩

theorem w4_of_sh {v : ValueHOL 64} (h : shapeEqHOL (shapeOfHOLExact v) Spec.Mpt.Dec.sh4 = true) :
    ∃ c0 c1 c2 c3 : BitVec 64,
      v = .rStruct [.val (.word c0), .val (.word c1), .val (.word c2), .val (.word c3)] := by
  obtain ⟨ws, hl, rfl⟩ := Spec.eq_wv_of_shapeEq' (k := 4) h
  match ws, hl with
  | [c0, c1, c2, c3], _ => exact ⟨c0, c1, c2, c3, rfl⟩

theorem lcn_set {P N Ar c0 c1 c2 : BitVec 64} {s st : State σ} (h : LCn P N Ar c0 c1 c2 s.locals)
    {x : MlS} (h1 : x ≠ nm "p") (h2 : x ≠ nm "n") (h3 : x ≠ nm "arr") (h4 : x ≠ nm "cn")
    (v : ValueHOL 64) :
    LCn P N Ar c0 c1 c2 (setVarHOLFinite x v { st with locals := s.locals }).locals :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2.1,
    by rw [lk_set_ne _ _ h3]; exact h.2.2.1, by rw [lk_set_ne _ _ h4]; exact h.2.2.2⟩


/-- **After `cn = compact_to_nibbles(...)`** (`dsCn`). -/
theorem dsCn_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aDS vs s0 Γ0 p0) guestCtx) {P N Ar c0 c1 c2 : BitVec 64}
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ guestCtx (GI (aDS vs s0 Γ0 p0) (LCn P N Ar c0 c1 c2)
        (fun Γ q M => EA P N Ar 2 Γ q M ∧ Hooks.NIn Γ c0 c1))
      Spec.Mpt.Dec.dsCn (GP (aDS vs s0 Γ0 p0) L2 E2 (RvDS (aDS vs s0 Γ0 p0))) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold Spec.Mpt.Dec.dsCn
  -- the leaf path
  refine gp_seq (L := LCn P N Ar c0 c1 c2) (E := fun Γ q M => EA P N Ar 2 Γ q M ∧ Hooks.NIn Γ c0 c1)
    (hoareG_ite ?_ (gp_skip (fun s h => h.1))) ?_
  · refine hoareG_pre (P := GI (aDS vs s0 Γ0 p0) (LCn P N Ar c0 c1 c2)
        (fun Γ q M => EA P N Ar 2 Γ q M ∧ Hooks.NIn Γ c0 c1)) ?_ (fun s _ h => h.1)
    refine gp_decCall ha (sumA_of_csumm rlpItem_R) (Spec.Mpt.Leaves.freshFoot_rlp_item' hX)
      (by simp) (by simp)
      (L1 := fun v m => (∃ va vb vc vd : BitVec 64, v = .rStruct [.val (.word va), .val (.word vb),
          .val (.word vc), .val (.word vd)]) ∧ m.lookup (nm "vi") = some v ∧
        LCn P N Ar c0 c1 c2 m)
      (E1 := fun v Γ q M => (EA P N Ar 2 Γ q M ∧ Hooks.NIn Γ c0 c1) ∧ ∀ va vb vc vd : BitVec 64,
        v = .rStruct [.val (.word va), .val (.word vb), .val (.word vc), .val (.word vd)] →
          Hooks.VInR Types.tVAL Γ vb vc)
      (L2 := fun _ => False)
      (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs _ hEs hLc _ co => ⟨scrOld_nf0_co rfl co rfl,
        fun v hv hsh => ⟨⟨ea_co rfl rfl co hEs.1, Hooks.nIn_ext co.ext hEs.2⟩,
          fun va vb vc vd hvv => ?_⟩⟩)
      (fun s st v hL hsh => ⟨w4_of_sh hsh, by simp [setVarHOLFinite, FUPDATE],
        lcn_set hL (by decide) (by decide) (by decide) (by decide) v⟩)
      ?_ (fun _ _ _ h => h.elim)
    · subst hv
      have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
      obtain ⟨p', -, -, -, -, hQ⟩ := hLc _ rfl q hpe (heap_ord co.heap0) trivial
      obtain ⟨P1, L1, hvs', hRi⟩ := hQ
      obtain ⟨v0, vs2, rfl, h0, hvs2⟩ := evs_cons_inv hvs
      obtain ⟨v1, vs3, rfl, h1, hvs3⟩ := evs_cons_inv hvs2
      rw [evs_nil] at hvs3
      cases hvs3
      have e0 := ev_ldArr0' hL.2.2.1 1 (by decide) v0 h0
      have e1 := Spec.Mpt.Dec.ev_ldArr8 hL.2.2.1 1 (by decide) v1 h1
      subst e0 e1
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
      obtain ⟨hP1, hL1⟩ := hvs'
      subst hP1 hL1
      have hS := hEs.1.2.2.2 1 (by decide)
      have hVin := arrS_vin hEs.1.2 hEs.1.1.2.2 (j := 1) (by decide)
      have hhp := hEs.1.1.2.1
      have hq := (heap_ord co.heap0).2.1
      have hE' : heapEnd < 2 ^ 64 := Hooks.heapEnd_lt
      obtain ⟨hcL, hb⟩ := hRi _ _ _ _ hvv
      have hb' := hb (by omega)
      exact Hooks.vInR_ext co.ext (vInR_sub hVin hb'.1 hb'.2)
    · intro v
      by_cases h4 : ∃ va vb vc vd : BitVec 64, v = .rStruct [.val (.word va), .val (.word vb),
          .val (.word vc), .val (.word vd)]
      swap
      · exact hoareG_false fun s _ h => h4 h.1.1
      obtain ⟨va, vb, vc, vd, rfl⟩ := h4
      exact hoareG_pre (dsLeaf_G ha (P := P) (N := N) (c0 := c0) (c1 := c1) (c2 := c2) (va := va)
        (vb := vb) (vc := vc) (vd := vd)
        (E := fun Γ q M => (EA P N Ar 2 Γ q M ∧ Hooks.NIn Γ c0 c1) ∧ ∀ va' vb' vc' vd' : BitVec 64,
          ValueHOL.rStruct [.val (.word va), .val (.word vb), .val (.word vc), .val (.word vd)] =
            .rStruct [.val (.word va'), .val (.word vb'), .val (.word vc'), .val (.word vd')] →
              Hooks.VInR Types.tVAL Γ vb' vc')
        (fun Γ q M h => ⟨h.1.2, h.2 va vb vc vd rfl⟩))
        (fun s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩ =>
          ⟨⟨hL.2.2.1, hL.2.2.2.1, hL.2.2.2.2.2, hL.2.1⟩, Γ, q, he, hh, hsc, hE⟩)
  refine gp_seq (L := LCn P N Ar c0 c1 c2) (E := fun Γ q M => EA P N Ar 2 Γ q M ∧ Hooks.NIn Γ c0 c1)
    (hoareG_ite (hoareG_pre (gp_fail ha 7) (fun s _ h => h.1)) (gp_skip (fun s h => h.1))) ?_
  -- the extension record
  refine gp_decCall ha (sumA_of_csumm scrAlloc_R) (MemSafe.allocSpec_scratch_alloc hX)
    (by simp) (by simp)
    (L1 := fun v m => (∃ R : BitVec 64, v = .val (.word R)) ∧ m.lookup (nm "rec") = some v ∧
      LCn P N Ar c0 c1 c2 m)
    (E1 := fun v Γ q M => (EA P N Ar 2 Γ q M ∧ Hooks.NIn Γ c0 c1) ∧ ∀ R : BitVec 64,
      v = .val (.word R) → FrE (aDS vs s0 Γ0 p0) R Γ q ∧ heapEnd ≤ R.toNat)
    (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs _ hEs hLc _ co => ⟨scrOld_nf0_co rfl co rfl,
      fun v hv _ => ⟨⟨ea_co rfl rfl co hEs.1, Hooks.nIn_ext co.ext hEs.2⟩, fun R hR => by
        subst hv hR
        rw [evs_cons (ev_cw _ 88) evs_nil] at hvs
        cases hvs
        exact frE_of_alloc rfl co rfl rfl hLc⟩⟩)
    (fun s st v hL hsh => ⟨val_of_shapeEq_one' hsh, by simp [setVarHOLFinite, FUPDATE],
      lcn_set hL (by decide) (by decide) (by decide) (by decide) v⟩)
    ?_ (fun _ _ _ h => h.elim)
  intro v
  by_cases hw : ∃ R : BitVec 64, v = .val (.word R)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨R, rfl⟩ := hw
  exact hoareG_pre (dsExtRec_G (R := R) (P := P) (N := N) (Ar := Ar) (c0 := c0) (c1 := c1) (c2 := c2)
    ha rfl) (fun s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩ =>
      ⟨⟨hL.2.1, hL.2.2.2.2.1, hL.2.2.1, hL.2.2.2.1, hL.2.2.2.2.2⟩, Γ, q, he, hh, hsc,
        ⟨(hE.2 R rfl).1, (hE.2 R rfl).2, hE.1.2⟩, hE.1.1⟩)

/-- Locals at `pi`: `p`, `n`, `arr` exact, `pi = V`. -/
def LPi (P N Ar : BitVec 64) (V : ValueHOL 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "arr") = some (.val (.word Ar)) ∧ m.lookup (nm "pi") = some V

/-- The item length bound. -/
def PiB (V : ValueHOL 64) : Prop :=
  ∀ P0 P1 P2 P3 : BitVec 64,
    V = .rStruct [.val (.word P0), .val (.word P1), .val (.word P2), .val (.word P3)] →
      P2.toNat < 2 ^ 40

/-- **After `pi = rlp_item(arr[0])`** (`dsPi`). -/
theorem dsPi_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aDS vs s0 Γ0 p0) guestCtx) {P N Ar : BitVec 64} {V : ValueHOL 64} (hV : PiB V)
    (hV4 : ∃ c0 c1 c2 c3 : BitVec 64,
      V = .rStruct [.val (.word c0), .val (.word c1), .val (.word c2), .val (.word c3)])
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ guestCtx (GI (aDS vs s0 Γ0 p0) (LPi P N Ar V) (fun Γ q M => EA P N Ar 2 Γ q M))
      Spec.Mpt.Dec.dsPi (GP (aDS vs s0 Γ0 p0) L2 E2 (RvDS (aDS vs s0 Γ0 p0))) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold Spec.Mpt.Dec.dsPi
  refine gp_seq (L := LPi P N Ar V) (E := fun Γ q M => EA P N Ar 2 Γ q M)
    (hoareG_ite (hoareG_pre (gp_fail ha 5) (fun s _ h => h.1)) (gp_skip (fun s h => h.1))) ?_
  obtain ⟨c0, c1, c2, c3, rfl⟩ := hV4
  have hc2 := hV c0 c1 c2 c3 rfl
  refine gp_decCallA ha ctn_R (funSpec_ctn_val hX) (by simp [MptH.ctnSig]) (by simp [MptH.ctnSig])
    (L1 := fun v m => (∃ d0 d1 d2 : BitVec 64, v = .rStruct [.val (.word d0), .val (.word d1),
        .val (.word d2)]) ∧ m.lookup (nm "cn") = some v ∧ m.lookup (nm "p") = some (.val (.word P)) ∧
        m.lookup (nm "n") = some (.val (.word N)) ∧ m.lookup (nm "arr") = some (.val (.word Ar)))
    (E1 := fun v Γ q M => EA P N Ar 2 Γ q M ∧ ∀ d0 d1 d2 : BitVec 64,
      v = .rStruct [.val (.word d0), .val (.word d1), .val (.word d2)] → Hooks.NIn Γ d0 d1)
    (L2 := fun _ => False)
    (fun s Γ q _ hL _ _ vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs _ hEs hLc _ co => ⟨scrOld_nf0_co rfl co rfl,
      fun v hv hsh => ?_⟩)
    (fun s st v hL hsh => ⟨w3_of_sh hsh, by simp [setVarHOLFinite, FUPDATE],
      by rw [lk_set_ne _ _ (by decide)]; exact hL.1,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2.1,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2.2.1⟩)
    ?_ (fun _ _ _ h => h.elim)
  · have h1 := Spec.Mpt.Dec.ev_rfield_w (i := 1) hL.2.2.2 rfl
    have h2 := Spec.Mpt.Dec.ev_rfield_w (i := 2) hL.2.2.2 rfl
    rw [evs_cons h1 (evs_cons h2 evs_nil)] at hvs
    cases hvs
    refine ⟨(anyArgsG (by simp [MptH.ctnSig]) rfl
        (evs_cons h1 (evs_cons h2 evs_nil))).1,
      fun x hx => argCells_any (by simp [MptH.ctnSig]) hx, fun _ N' hN' => ?_⟩
    simp only [argW, List.getElem?_cons_succ, List.getElem?_cons_zero, wordOf,
      Option.some.injEq] at hN'
    subst hN'
    omega
  · subst hv
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    obtain ⟨v0, vs2, rfl, h0, hvs2⟩ := evs_cons_inv hvs
    obtain ⟨v1, vs3, rfl, h1, hvs3⟩ := evs_cons_inv hvs2
    rw [evs_nil] at hvs3
    cases hvs3
    have e0 := Spec.Mpt.Dec.ev_rfield_w (i := 1) hL.2.2.2 rfl
    have e1 := Spec.Mpt.Dec.ev_rfield_w (i := 2) hL.2.2.2 rfl
    rw [h0] at e0
    rw [h1] at e1
    cases e0
    cases e1
    obtain ⟨p', out, len, leaf, hv', hp', hord', hmono, hbe, h8, hb, hhp, hfr, hlen, hbyte⟩ :=
      hLc _ rfl c1 c2 rfl (by omega) q hpe (heap_ord co.heap0)
    have hq' : p' = q' := by
      have := co.heap.2.1
      rw [hp'] at this
      exact Option.some.inj this
    subst hq'
    have hbyte' : ∀ j, j < len.toNat → Hooks.byteAt st.memory st.be (out + BitVec.ofNat 64 j) < 16 := by
      intro j hj
      have h := hbyte j hj
      have hbe' : st.be = (callEntryStateHOLFinite s callee).be := hbe
      rw [hbe']
      exact h
    obtain ⟨Γ'', hx, hh2, hsc2, hN, hnew, hge⟩ := ctn_adopt ha rfl rfl rfl co rfl h8 hb hhp hfr hlen hbyte'
    refine ⟨Γ'', hx, hh2, hsc2, ea_adopt (ea_co rfl rfl co hEs) hEs.2.1 hx hnew hge (heap_ord co.heap0),
      fun d0 d1 d2 hvv => ?_⟩
    rw [hv'] at hvv
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
      and_true] at hvv
    obtain ⟨rfl, rfl, -⟩ := hvv
    exact hN
  · intro v
    by_cases h3 : ∃ d0 d1 d2 : BitVec 64, v = .rStruct [.val (.word d0), .val (.word d1), .val (.word d2)]
    swap
    · exact hoareG_false fun s _ h => h3 h.1.1
    obtain ⟨d0, d1, d2, rfl⟩ := h3
    exact hoareG_pre (dsCn_G ha (P := P) (N := N) (Ar := Ar) (c0 := d0) (c1 := d1) (c2 := d2))
      (fun s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨⟨hL.2.2.1, hL.2.2.2.1, hL.2.2.2.2, hL.2.1⟩, Γ, q, he, hh,
        hsc, hE.1, hE.2 d0 d1 d2 rfl⟩)


/-- `p`, `n`, `arr` exact. -/
def LPn (P N Ar : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "arr") = some (.val (.word Ar))

/-- **`pi = rlp_item(arr[0]); ...`** (`dsExt`). -/
theorem dsExt_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aDS vs s0 Γ0 p0) guestCtx) {P N Ar : BitVec 64}
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ guestCtx (GI (aDS vs s0 Γ0 p0) (LPn P N Ar) (fun Γ q M => EA P N Ar 2 Γ q M))
      Spec.Mpt.Dec.dsExt (GP (aDS vs s0 Γ0 p0) L2 E2 (RvDS (aDS vs s0 Γ0 p0))) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold Spec.Mpt.Dec.dsExt
  refine gp_decCall ha (sumA_of_csumm rlpItem_R) (Spec.Mpt.Leaves.freshFoot_rlp_item hX)
    (by simp) (by simp)
    (L1 := fun v m => LPi P N Ar v m ∧ ∃ c0 c1 c2 c3 : BitVec 64,
      v = .rStruct [.val (.word c0), .val (.word c1), .val (.word c2), .val (.word c3)])
    (E1 := fun v Γ q M => EA P N Ar 2 Γ q M ∧ PiB v) (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs _ hEs hLc _ co => ⟨scrOld_nf0_co rfl co rfl,
      fun v hv _ => ⟨ea_co rfl rfl co hEs, ?_⟩⟩)
    (fun s st v hL hsh => ⟨⟨by rw [lk_set_ne _ _ (by decide)]; exact hL.1,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2.1,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2.2, by simp [setVarHOLFinite, FUPDATE]⟩,
      w4_of_sh hsh⟩)
    ?_ (fun _ _ _ h => h.elim)
  · subst hv
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    obtain ⟨p', -, -, -, -, hQ⟩ := hLc _ rfl q hpe (heap_ord co.heap0) trivial
    obtain ⟨v0, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs
    obtain ⟨v1, vs3, rfl, h1, hvs3⟩ := evs_cons_inv hvs2
    rw [evs_nil] at hvs3
    cases hvs3
    have hv1 := Spec.Mpt.Dec.ev_ldArr8 hL.2.2 0 (by decide) v1 h1
    subst hv1
    intro P0 P1 P2 P3 hvv
    have := hQ v0 _ P0 P1 P2 P3 rfl hvv
    have hS := (hEs.2.2.2 0 (by decide)).2
    have hhp := hEs.1.2.1
    have hq := (heap_ord co.heap0).2.1
    have hE' : heapEnd < 2 ^ 64 := Hooks.heapEnd_lt
    have e8 : (BitVec.ofNat 64 (16 * 0 + 8) : BitVec 64) = BitVec.ofNat 64 8 := rfl
    rw [e8] at this hS
    have hlt : P2.toNat < 2 ^ 40 := by
      have : heapEnd < 2 ^ 32 := by decide
      omega
    exact hlt
  intro v
  by_cases h4 : ∃ c0 c1 c2 c3 : BitVec 64,
      v = .rStruct [.val (.word c0), .val (.word c1), .val (.word c2), .val (.word c3)]
  swap
  · exact hoareG_false fun s _ h => h4 h.1.2
  by_cases hb : PiB v
  swap
  · exact hoareG_false fun s _ ⟨_, Γ, q, _, _, _, hE'⟩ => hb hE'.2
  exact hoareG_pre (dsPi_G (P := P) (N := N) (Ar := Ar) (V := v) ha hb h4)
    (fun s _ ⟨hL, Γ, q, he, hh, hsc, hE'⟩ => ⟨hL.1, Γ, q, he, hh, hsc, hE'.1⟩)


/-- The branch path's locals: `p`, `n`, `arr`, and `sl`. -/
def LBrP (P N Ar Cnt : BitVec 64) (m : LocalsH) : Prop :=
  LPn P N Ar m ∧ m.lookup (nm "sl") = some (.rStruct [.val (.word Ar), .val (.word Cnt)])

/-- **The branch path** (`dsBr`). -/
theorem dsBr_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aDS vs s0 Γ0 p0) guestCtx) {P N Ar Cnt : BitVec 64}
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ guestCtx (GI (aDS vs s0 Γ0 p0) (LBrP P N Ar Cnt)
        (fun Γ q M => EA P N Ar Cnt.toNat Γ q M))
      Spec.Mpt.Dec.dsBr (GP (aDS vs s0 Γ0 p0) L2 E2 (RvDS (aDS vs s0 Γ0 p0))) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold Spec.Mpt.Dec.dsBr
  by_cases hc : Cnt = BitVec.ofNat 64 17
  swap
  · refine gp_seq (L := fun _ => False) (E := fun Γ q M => EA P N Ar Cnt.toNat Γ q M)
      (hoareG_ite (hoareG_pre (gp_fail ha 4) (fun s _ h => h.1))
        (hoareG_false fun s _ ⟨⟨hL, _⟩, hcnd⟩ => hc (Spec.Mpt.Dec.notEq_else (x := Cnt) (k := 17)
          (Spec.Mpt.Dec.ev_rfield_w (i := 1) hL.2 rfl) hcnd))) ?_
    exact hoareG_false fun s _ h => h.1
  subst hc
  have e17 : (BitVec.ofNat 64 17).toNat = 17 := rfl
  rw [e17]
  refine gp_seq (L := LBrP P N Ar (BitVec.ofNat 64 17)) (E := fun Γ q M => EA P N Ar 17 Γ q M)
    (hoareG_ite (hoareG_pre (gp_fail ha 4) (fun s _ h => h.1)) (gp_skip (fun s h => h.1))) ?_
  refine gp_decCall ha node_new_branchT_guestR (ctor_sp hX ctor_branch_sp) (by simp [Node.nbSig])
    (fun _ => rfl)
    (L1 := fun v m => (∃ BR : BitVec 64, v = .val (.word BR)) ∧ m.lookup (nm "br") = some v ∧
      LBrP P N Ar (BitVec.ofNat 64 17) m)
    (E1 := fun v Γ q M => EA P N Ar 17 Γ q M ∧ ∀ BR : BitVec 64, v = .val (.word BR) →
      BrO (aDS vs s0 Γ0 p0).p0 Γ BR)
    (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp [Node.nbSig]) rfl hvs).1,
      fun x hx => argCells_any (by simp [Node.nbSig]) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs _ hEs hLc hQ co => ⟨scrOld_sp_co rfl co hLc,
      fun v hv _ => ⟨ea_co rfl rfl co hEs, fun BR hBR => ?_⟩⟩)
    (fun s st v hL hsh => ⟨val_of_shapeEq_one' hsh, by simp [setVarHOLFinite, FUPDATE],
      ⟨by rw [lk_set_ne _ _ (by decide)]; exact hL.1.1, by rw [lk_set_ne _ _ (by decide)]; exact hL.1.2.1,
        by rw [lk_set_ne _ _ (by decide)]; exact hL.1.2.2⟩,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2⟩)
    ?_ (fun _ _ _ h => h.elim)
  · subst hBR
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    obtain ⟨o, ho, hov, ht, hfr⟩ := hQ _ hv q hpe
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hov
    obtain ⟨p1, hp1, hord1, hL1, -⟩ := co.heap.1
    have hmin : 176 ≤ o.size := by
      have := (hL1.1 o ho).2.2.2.1
      rw [ht] at this
      exact this
    refine ⟨o, ho, hov.symm, ht, fun x hx hal => hfr x ?_ (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 hal)⟩
    obtain ⟨h8, h1, h2⟩ := hx
    rw [hov] at h1 h2
    exact ⟨h8, by unfold Obj.lo; omega, by unfold Obj.lo; omega⟩
  intro v
  by_cases hw : ∃ BR : BitVec 64, v = .val (.word BR)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨BR, rfl⟩ := hw
  refine gp_decCall ha (sumA_of_csumm scrAlloc_R) (MemSafe.allocSpec_scratch_alloc hX)
    (by simp) (by simp)
    (L1 := fun v m => (∃ R : BitVec 64, v = .val (.word R)) ∧ m.lookup (nm "rec2") = some v ∧
      m.lookup (nm "br") = some (.val (.word BR)) ∧ LBrP P N Ar (BitVec.ofNat 64 17) m)
    (E1 := fun v Γ q M => (EA P N Ar 17 Γ q M ∧ BrO (aDS vs s0 Γ0 p0).p0 Γ BR) ∧ ∀ R : BitVec 64,
      v = .val (.word R) → FrE (aDS vs s0 Γ0 p0) R Γ q ∧ heapEnd ≤ R.toNat)
    (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ _ hvs _ hEs hLc _ co => ⟨scrOld_nf0_co rfl co rfl,
      fun v hv _ => ⟨⟨ea_co rfl rfl co hEs.1, brO_ext co.ext (hEs.2 BR rfl)⟩, fun R hR => by
        subst hv hR
        rw [evs_cons (ev_cw _ 88) evs_nil] at hvs
        cases hvs
        exact frE_of_alloc rfl co rfl rfl hLc⟩⟩)
    (fun s st v hL hsh => ⟨val_of_shapeEq_one' hsh, by simp [setVarHOLFinite, FUPDATE],
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2.1,
      ⟨by rw [lk_set_ne _ _ (by decide)]; exact hL.2.2.1.1, by rw [lk_set_ne _ _ (by decide)]; exact hL.2.2.1.2.1,
        by rw [lk_set_ne _ _ (by decide)]; exact hL.2.2.1.2.2⟩,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2.2.2⟩)
    ?_ (fun _ _ _ h => h.elim)
  intro v
  by_cases hw : ∃ R : BitVec 64, v = .val (.word R)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨R, rfl⟩ := hw
  exact hoareG_pre (dsBrRec_G (R := R) (BR := BR) (P := P) (N := N) (Ar := Ar) ha rfl)
    (fun s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩ =>
      ⟨⟨hL.2.1, hL.2.2.1, hL.2.2.2.1.2.2, hL.2.2.2.1.1, hL.2.2.2.1.2.1⟩, Γ, q, he, hh, hsc,
        ⟨(hE.2 R rfl).1, (hE.2 R rfl).2, hE.1.2⟩, hE.1.1⟩)


/-- Locals after `sl = rlp_list_to_slices(...)`. -/
def LSl (P N Ar Cnt : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "sl") = some (.rStruct [.val (.word Ar), .val (.word Cnt)])

/-- **After `sl = rlp_list_to_slices(...)`** (`dsSl`). -/
theorem dsSl_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aDS vs s0 Γ0 p0) guestCtx) {P N Ar Cnt : BitVec 64}
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ guestCtx (GI (aDS vs s0 Γ0 p0) (LSl P N Ar Cnt)
        (fun Γ q M => EA P N Ar Cnt.toNat Γ q M))
      Spec.Mpt.Dec.dsSl (GP (aDS vs s0 Γ0 p0) L2 E2 (RvDS (aDS vs s0 Γ0 p0))) := by
  unfold Spec.Mpt.Dec.dsSl
  refine gp_dec ha.hH (L1 := LBrP P N Ar Cnt) (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_
    (fun _ _ _ h => h.elim)
  · rw [Spec.Mpt.Dec.ev_rfield_w (i := 0) hL.2.2 rfl] at hv
    cases hv
    exact ⟨⟨by rw [lk_set_ne _ _ (by decide)]; exact hL.1, by rw [lk_set_ne _ _ (by decide)]; exact hL.2.1,
      by simp [setVarHOLFinite, FUPDATE]⟩, by rw [lk_set_ne _ _ (by decide)]; exact hL.2.2⟩
  refine gp_seq (L := LBrP P N Ar Cnt) (E := fun Γ q M => EA P N Ar Cnt.toNat Γ q M)
    (hoareG_ite ?_ (gp_skip (fun s h => h.1))) ?_
  · by_cases hc2 : Cnt = BitVec.ofNat 64 2
    · subst hc2
      exact hoareG_pre (dsExt_G ha (P := P) (N := N) (Ar := Ar))
        (fun s _ ⟨⟨hL, Γ, q, he, hh, hsc, hE⟩, _⟩ => ⟨hL.1, Γ, q, he, hh, hsc, hE⟩)
    · exact hoareG_false fun s _ ⟨⟨hL, _⟩, hc⟩ =>
        hc2 (Spec.Mpt.Dec.eq_of_then (Spec.Mpt.Dec.ev_rfield_w (i := 1) hL.2 rfl) hc)
  · exact dsBr_G ha

end InitECandidate.Solver.MemSafe.Dn
#print axioms InitECandidate.Solver.MemSafe.Dn.dsSl_G
