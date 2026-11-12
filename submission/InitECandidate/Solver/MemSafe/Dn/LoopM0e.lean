import InitECandidate.Solver.MemSafe.Dn.LoopM0d

set_option autoImplicit false

/-!
# The decoder loop, mode 0: the extension record, the hash cell, the dispatch

* `wdExt_G`: an extension record becomes a fresh extension node (`node_new_ext`), its slice
  cells, then the pop;
* `wdHashSt_G`: the cached hash into slot 3 of the result node;
* `wdPopK_G`, **`wdM0_G`**: mode 0 (`top == 0` ends the loop).
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

theorem ctor_ext_sp : ctorNames.contains (nm "node_new_ext") = true := by decide_cbv

/-- **An extension record** (`wdExt`). -/
theorem wdExt_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {DB T R Mo G : BitVec 64} (hT : T ≠ 0) (hMo : Mo ≠ 1 ∧ Mo ≠ 2) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LK DB T R Mo G)
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
          Fits Γ Types.nodeU R ∧ rd M (T + 8) = 1))
      Spec.Mpt.Dec.wdExt (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hse : scratchEnd < 2 ^ 64 := by decide
  unfold Spec.Mpt.Dec.wdExt Spec.Mpt.Dec.wdExtCk
  refine gp_seqJ (hoareG_ite (hoareG_pre (gp_fail ha 8) (fun s _ h => h.1))
    (gp_skip fun s h => h.1)) ?_
  refine gp_decJ ha.hH (L1 := LK DB T R Mo G)
    (fun s _ hL v _ => lk_set hL (by decide) (by decide) (by decide) (by decide) (by decide) v) ?_
    (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) t o h)
  refine gp_seqJ (hoareG_ite (hoareG_pre (gp_fail ha 8) (fun s _ h => h.1))
    (gp_skip fun s h => h.1)) ?_
  refine gp_decCallJ ha node_new_ext_guestR (ctor_sp hX ctor_ext_sp)
    (by simp [Node.neSig]) (fun _ => rfl)
    (L1 := fun v m => (∃ EX : BitVec 64, v = .val (.word EX)) ∧ m.lookup (nm "ex") = some v ∧
      LK DB T R Mo G m)
    (E1 := fun v Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
      ∀ EX : BitVec 64, v = .val (.word EX) → Fits Γ Types.nodeU EX)
    (fun s Γ q _ hL _ hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ⟨scrOld_sp_co rfl co hLc,
      fun v hv _ => ⟨frG_call rfl rfl hL0 hsp0 co hsc hE.1, ndbR_co rfl rfl co hE.2.1,
        fun EX hEX => by subst hEX; exact co.ret _ hv 0 _ EX rfl (by simp [flattenHOL])⟩⟩)
    (fun s st v hL hsh => ⟨val_of_shapeEq_one' hsh, by simp [setVarHOLFinite, FUPDATE],
      lk_set hL (by decide) (by decide) (by decide) (by decide) (by decide) v⟩)
    ?_ (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) t o h)
  · obtain ⟨v1, vs2, rfl, h1, h2⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs3, rfl, h2', h3⟩ := evs_cons_inv h2
    obtain ⟨v3, vs4, rfl, h3', h4⟩ := evs_cons_inv h3
    rw [evs_nil] at h4
    cases h4
    rw [ev_lw hL.2.2.1] at h3'
    cases h3'
    have e1 := ev_ldTopk hL.2.1 64 v1 h1
    have e2 := ev_ldTopk hL.2.1 72 v2 h2'
    subst e1 e2
    obtain ⟨-, -, -, -, -, hRS, -⟩ := frG_unfold hE.1 hT
    exact ⟨(neArgs (C := Types.guestC) (q := q) hE.2.2.1).1,
      (neArgs (C := Types.guestC) (q := q) hE.2.2.1).2,
      fun _ => ⟨_, _, R, rfl, hRS.2.2 hE.2.2.2⟩⟩
  intro v
  by_cases hw : ∃ EX : BitVec 64, v = .val (.word EX)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨EX, rfl⟩ := hw
  unfold Spec.Mpt.Dec.wdExtK
  have hex : ∀ m, ((∃ EX' : BitVec 64, ValueHOL.val (.word EX) = .val (.word EX')) ∧
      m.lookup (nm "ex") = some (.val (.word EX)) ∧ LK DB T R Mo G m) →
      m.lookup (nm "ex") = some (.val (.word EX)) := fun m h => h.2.1
  refine gp_seqJ (gp_stNode ha 1 ⟨le_refl _, by decide⟩ hex
    (fun s v hL hv => ld_word hL.2.2.2.1 48 v hv) (fun Γ q M h => h.2.2 EX rfl)
    (fun Γ q M V h hA hn hin => ⟨frG_upd_out (by omega) hA (Or.inl hin) h.1, ndbR_upd h.2.1 hn, h.2.2⟩)) ?_
  refine gp_seqJ (gp_stNode ha 2 ⟨by decide, by decide⟩ hex
    (fun s v hL hv => ld_word hL.2.2.2.1 56 v hv) (fun Γ q M h => h.2.2 EX rfl)
    (fun Γ q M V h hA hn hin => ⟨frG_upd_out (by omega) hA (Or.inl hin) h.1, ndbR_upd h.2.1 hn, h.2.2⟩)) ?_
  exact pop_tail ha hT hMo (x := nm "ex") (X := EX) (by decide) (fun m h => ⟨h.2.2, h.2.1⟩)
    (fun Γ q M h => ⟨h.1, h.2.2 EX rfl, h.2.1⟩)

/-- A record cell survives a store below the record. -/
theorem rd_upd_rec {M : Mem} {A V T : BitVec 64} {k : Nat} (hk : k < 88) (hT : T.toNat + 88 < 2 ^ 64)
    (hA : A.toNat < T.toNat) :
    rd (Struct.upd M A V) (T + BitVec.ofNat 64 k) = rd M (T + BitVec.ofNat 64 k) :=
  rd_eq_of_mem (upd_ne (fun e => by
    have := congrArg BitVec.toNat e
    rw [Spec.Mpt.Dec.toNat_add_lt (by omega)] at this
    omega))

/-- Locals after `var hash = ld (top + 80)`. -/
def LH (DB T R Mo G : BitVec 64) (m : LocalsH) : Prop := LK DB T R Mo G m ∧ IsW m (nm "hash")

/-- The memory facts of a mode-0 iteration with `top ≠ 0`. -/
def EP {σ : Type} (a : Act σ) (sp0 : Nat) (DB T R : BitVec 64) (Γ : Gam) (q : Ptrs) (M : Mem) : Prop :=
  FrG a Γ q M q.sp sp0 T ∧ Hooks.NdbR Γ M DB ∧ Fits Γ Types.nodeU R ∧
    (rd M (T + 8) ≠ 1 → (rd M (T + 32)).toNat < 16)

/-- **The hash cell** (`wdHashSt`). -/
theorem wdHashSt_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hsp0 : p0.sp ≤ scratchEnd)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {DB T R Mo G : BitVec 64} (hT : T ≠ 0) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LH DB T R Mo G) (EP (aB vs s0 Γ0 p0) p0.sp DB T R))
      Spec.Mpt.Dec.wdHashSt
      (GP (aB vs s0 Γ0 p0) (LH DB T R Mo G) (EP (aB vs s0 Γ0 p0) p0.sp DB T R) Rv) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  unfold Spec.Mpt.Dec.wdHashSt
  refine hoareG_ite (hoareG_pre (gp_stNode ha 3 ⟨by decide, le_refl _⟩ (fun m h => h.1.2.2.1)
    (fun s v hL hv => isW_ev hL.2 v hv) (fun Γ q M h => h.2.2.1) (fun Γ q M V h hA hn hin => ?_))
    (fun s _ h => h.1)) (gp_skip fun s h => h.1)
  obtain ⟨h1, h2, -, -, -⟩ := frG_unfold h.1 hT
  have e8 : rd (Struct.upd M (R + BitVec.ofNat 64 (8 * 3)) V) (T + 8) = rd M (T + 8) :=
    rd_upd_rec (k := 8) (by decide) (by omega) (by omega)
  have e32 : rd (Struct.upd M (R + BitVec.ofNat 64 (8 * 3)) V) (T + 32) = rd M (T + 32) :=
    rd_upd_rec (k := 32) (by decide) (by omega) (by omega)
  refine ⟨frG_upd_out (by omega) hA (Or.inl hin) h.1, ndbR_upd h.2.1 hn, h.2.2.1, ?_⟩
  rw [e8, e32]
  exact h.2.2.2

/-- **After `var hash = ld (top + 80)`** (`wdPopK`). -/
theorem wdPopK_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {DB T R Mo G : BitVec 64} (hT : T ≠ 0) (hMo : Mo ≠ 1 ∧ Mo ≠ 2)
    (hG : G ≠ 0) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LH DB T R Mo G) (EP (aB vs s0 Γ0 p0) p0.sp DB T R))
      Spec.Mpt.Dec.wdPopK (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  unfold Spec.Mpt.Dec.wdPopK
  refine gp_seqJ (wdHashSt_G ha hsp0 hT) ?_
  refine hoareG_ite ?_ ?_
  · exact hoareG_pre (wdExt_G ha hL0 hsp0 (DB := DB) (R := R) (G := G) hT hMo) (fun s _ h => by
      obtain ⟨⟨hl, Γ, q, he, hh, hsc, hE⟩, hc⟩ := h
      have hk1 : rd s.memory (T + BitVec.ofNat 64 8) = BitVec.ofNat 64 1 := by
        obtain ⟨w, hw, hw0⟩ := hc
        obtain ⟨a, b, ha', -, -⟩ := cmp_true hw hw0
        have := Spec.Mpt.Dec.ev_ld hl.1.2.1 8 _ ha'
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
        subst this
        exact Spec.Mpt.Dec.eq_of_then ha' ⟨w, hw, hw0⟩
      exact ⟨hl.1, Γ, q, he, hh, hsc, hE.1, hE.2.1, hE.2.2.1, hk1⟩)
  · refine hoareG_pre (wdBranch_G ha hL0 hsp0 (DB := DB) (R := R) hT hMo hG) (fun s _ h => ?_)
    obtain ⟨⟨hl, Γ, q, he, hh, hsc, hE⟩, hc⟩ := h
    have hk : rd s.memory (T + BitVec.ofNat 64 8) ≠ BitVec.ofNat 64 1 := by
      obtain ⟨a, b, ha', -, -⟩ := cmp_false hc
      have := Spec.Mpt.Dec.ev_ld hl.1.2.1 8 _ ha'
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
      subst this
      exact Spec.Mpt.Dec.ne_of_else ha' hc
    exact ⟨hl.1, Γ, q, he, hh, hsc, hE.1, hE.2.1, hE.2.2.1, hE.2.2.2 hk, hk⟩

/-- **Mode 0** (`wdM0`): `top == 0` ends the loop (`go = 0`), else the top record is finished. -/
theorem wdM0_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {DB T R Mo G : BitVec 64} (hMo : Mo ≠ 1 ∧ Mo ≠ 2) (hG : G ≠ 0) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LK DB T R Mo G)
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
          Fits Γ Types.nodeU R ∧ (T ≠ 0 → rd M (T + 8) ≠ 1 → (rd M (T + 32)).toNat < 16)))
      Spec.Mpt.Dec.wdM0 (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  unfold Spec.Mpt.Dec.wdM0
  refine hoareG_ite ?_ ?_
  · refine hoareG_pre (gpj_of_gp (gp_assign ha.hH (L' := LK DB T R Mo (BitVec.ofNat 64 0))
      (fun s _ hL v hv => ?_)) (jg_of (fun m h => h) (fun _ => hMo)
        (fun Γ q M hE => ⟨hE.1, fun _ _ => hE.2.2.1, hE.2.1⟩) (fun h => absurd h hMo.1))) (fun s _ h => h.1)
    rw [ev_cw] at hv
    cases hv
    obtain ⟨l1, l2, l3, l4, l5⟩ := hL
    exact ⟨lk_keep (by decide) l1, lk_keep (by decide) l2, lk_keep (by decide) l3,
      lk_keep (by decide) l4, by simp [setVarHOLFinite, FUPDATE]⟩
  · by_cases hT : T = 0
    · exact hoareG_false fun s _ h =>
        Spec.Mpt.Dec.ne_of_else (ev_lw h.1.1.2.1) h.2 (by rw [hT]; rfl)
    refine hoareG_pre (gp_decJ ha.hH (L1 := LH DB T R Mo G) (fun s _ hL v hv => ?_)
      (hoareG_pre (wdPopK_G ha hL0 hsp0 (DB := DB) (R := R) hT hMo hG) (fun s _ h => ?_))
      (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) t o h))
      (fun s _ h => h.1)
    · obtain ⟨V, rfl⟩ := ld_word hL.2.1 80 v hv
      exact ⟨lk_set hL (by decide) (by decide) (by decide) (by decide) (by decide) _,
        V, by simp [setVarHOLFinite, FUPDATE]⟩
    · obtain ⟨hl, Γ, q, he, hh, hsc, hE⟩ := h
      exact ⟨hl, Γ, q, he, hh, hsc, hE.1, hE.2.1, hE.2.2.1, hE.2.2.2 hT⟩

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.wdExt_G
#print axioms InitECandidate.Solver.MemSafe.Dn.wdPopK_G
#print axioms InitECandidate.Solver.MemSafe.Dn.wdM0_G
