import InitECandidate.Solver.MemSafe.Dn.LoopM0c

set_option autoImplicit false

/-!
# The decoder loop, mode 0: a branch record

* `wdBrI_G`: the child store into slot `4 + i` of the branch node, the occupancy count, then
  either the next slot (`wdAdv`, mode 2) or the finished branch (`wdBrPop`);
* `wdBranch_G`: `var br = ld (top + 16); var i = ld (top + 32); wdBrI`.
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

/-- Locals after `var i = ld (top + 32)`. -/
def LBI (DB T R Mo G BR I : BitVec 64) (m : LocalsH) : Prop :=
  LBr0 DB T R Mo G BR m ∧ m.lookup (nm "i") = some (.val (.word I))

theorem nbranch_child {n : Nat} (hn : n < 16) : Types.nbranchTy.slot (4 + n) = Types.nodeU := by
  interval_cases n <;> rfl

/-- **A branch record's slot** (`wdBrI`). -/
theorem wdBrI_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {DB T R Mo G BR I : BitVec 64} (hT : T ≠ 0)
    (hMo : Mo ≠ 1 ∧ Mo ≠ 2) (hG : G ≠ 0) (hI : I.toNat < 16) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LBI DB T R Mo G BR I)
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
          (BrO p0 Γ BR ∧ Fits Γ Types.nodeU R) ∧ rd M (T + 8) ≠ 1))
      Spec.Mpt.Dec.wdBrI (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  unfold Spec.Mpt.Dec.wdBrI
  -- the child store
  refine gp_seqJ (gp_stWH ha rfl (L := LBI DB T R Mo G BR I)
    (E' := fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ BrO p0 Γ BR ∧
      rd M (T + 8) ≠ 1)
    (A := BR + (BitVec.ofNat 64 32 + I * BitVec.ofNat 64 8))
    (fun s hL => ev_add3 (ev_lw hL.1.2) (ev_cw s 32) (ev_mul2 (ev_lw hL.2) (ev_cw s 8)))
    (fun s v hL hv => isW_ev ⟨R, hL.1.1.2.2.1⟩ v hv) (fun s Γ q V hL hh hE hv => ?_)
    (fun s Γ q V hL hh hE hn hv => ?_)) ?_
  · obtain ⟨o, ho, hb, -, hk, hsl⟩ := brO_slot hh hE.2.2.1.1 (j := 4 + I.toNat) (by omega)
    have hV : V = R := lv_val hL.1.1.2.2.1 hv
    subst hV
    refine ⟨o, ho, 4 + I.toNat, hk, by rw [hsl, nbranch_child hI]; decide, ?_,
      by rw [hsl, nbranch_child hI]; exact hE.2.2.1.2⟩
    rw [Obj.cell, hb]
    bv_omega
  · obtain ⟨o, ho, hb, ht, hk, -⟩ := brO_slot hh hE.2.2.1.1 (j := 21) (by omega)
    obtain ⟨h1, h2⟩ := node_below rfl hh ho ht
    obtain ⟨-, o2, -, -, -, -⟩ := heap_ord hh
    simp only [heapEnd] at o2
    unfold Obj.HasSlot at hk
    subst hb
    have e : (o.base + (BitVec.ofNat 64 32 + I * BitVec.ofNat 64 8)).toNat =
        o.base.toNat + 32 + 8 * I.toNat := by
      rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_mul]
      simp only [BitVec.toNat_ofNat]
      omega
    have hIn : InObj Γ (o.base + (BitVec.ofNat 64 32 + I * BitVec.ofNat 64 8)).toNat :=
      ⟨o, ho, by rw [e]; unfold Obj.lo; omega, by rw [e]; unfold Obj.hi; omega⟩
    obtain ⟨-, -, ⟨h8, h88, hc⟩, -⟩ := (frG_unfold hE.1 hT)
    have hTn : (T + 8).toNat = T.toNat + 8 := Spec.Mpt.Dec.toNat_add_lt (k := 8) (by omega)
    have hne : T + 8 ≠ o.base + (BitVec.ofNat 64 32 + I * BitVec.ofNat 64 8) := fun e' => by
      have := (hc (T + 8) ⟨by rw [hTn]; omega, by rw [hTn]; omega, by rw [hTn]; omega⟩).1
      rw [e'] at this
      exact this hIn
    refine ⟨frG_upd_out (by omega) (by rw [e]; omega) (Or.inl hIn) hE.1, ndbR_upd hE.2.1 hn,
      hE.2.2.1.1, ?_⟩
    rw [Struct.rd_upd_ne hne]
    exact hE.2.2.2
  -- the occupancy count
  refine gp_seqJ (L := LBI DB T R Mo G BR I)
    (E := fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ BrO p0 Γ BR ∧
      rd M (T + 8) ≠ 1) ?_ ?_
  · unfold Spec.Mpt.Dec.wdOccSt
    refine hoareG_ite (hoareG_pre (gp_stHeadM ha hsp0 (P := fun Γ => BrO p0 Γ BR)
      (Pm := fun M => rd M (T + 8) ≠ 1) (DB := DB) hT (k := 40)
      (by decide) (by decide) ?_ (fun m h => h.1.1.2.1) (fun s v hL hv => ?_))
      (fun s _ h => h.1)) (gp_skip fun s h => h.1)
    · intro M V hM
      rw [Struct.rd_upd_ne]
      · exact hM
      · intro e'
        exact absurd (by simpa using e' : (8 : BitVec 64) = 40) (by decide)
    · obtain ⟨x, y, -, -, rfl⟩ := Spec.Mpt.Leaves.ev_add2_inv' hv
      exact ⟨_, rfl⟩
  -- `i = i + 1`
  refine gp_seqJ (gp_assign ha.hH (L' := LBI DB T R Mo G BR (I + BitVec.ofNat 64 1))
    (fun s _ hL v hv => ?_)) ?_
  · rw [ev_add2 (ev_lw hL.2) (ev_cw s 1)] at hv
    cases hv
    exact ⟨lbr0_set hL.1 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) _,
      by simp [setVarHOLFinite, FUPDATE]⟩
  refine hoareG_ite ?_ ?_
  · -- the next slot
    refine hoareG_pre (P := GI (aB vs s0 Γ0 p0) (LBI DB T R Mo G BR (I + BitVec.ofNat 64 1))
      (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧ BrO p0 Γ BR ∧
        rd M (T + 8) ≠ 1)) ?_ (fun s _ h => h.1)
    unfold Spec.Mpt.Dec.wdAdv
    refine gp_seqJ (gp_stHeadM ha hsp0 (P := fun Γ => BrO p0 Γ BR) (Pm := fun M => rd M (T + 8) ≠ 1)
      (DB := DB) hT (k := 32) (by decide) (by decide)
      (fun M V hM => by
        rw [Struct.rd_upd_ne]
        · exact hM
        · intro e'
          exact absurd (by simpa using e' : (8 : BitVec 64) = 32) (by decide))
      (fun m h => h.1.1.2.1) (fun s v hL hv => isW_ev ⟨_, hL.2⟩ v hv)) ?_
    refine gp_seqJ (gp_assign ha.hH (L' := LK DB T R Mo G) (fun s _ hL v _ =>
      lk_set hL.1.1 (by decide) (by decide) (by decide) (by decide) (by decide) v)) ?_
    refine gpj_of_gp (gp_assign ha.hH (L' := LK DB T R (BitVec.ofNat 64 2) G)
      (fun s _ hL v hv => ?_)) (jg_of (fun m h => h) (fun h => absurd h hG)
        (fun Γ q M hE => ⟨hE.1, fun _ h => absurd rfl h, hE.2.1⟩)
        (fun h => absurd h (by decide)))
    rw [ev_cw] at hv
    cases hv
    obtain ⟨l1, l2, l3, l4, l5⟩ := hL
    exact ⟨lk_keep (by decide) l1, lk_keep (by decide) l2, lk_keep (by decide) l3,
      by simp [setVarHOLFinite, FUPDATE], lk_keep (by decide) l5⟩
  · -- the finished branch
    exact hoareG_pre (wdBrPop_G ha hL0 hsp0 hT hMo) (fun s _ h => gi_weak (fun m h => h.1) h.1)

/-- **A branch record** (`wdBranch`). -/
theorem wdBranch_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {DB T R Mo G : BitVec 64} (hT : T ≠ 0)
    (hMo : Mo ≠ 1 ∧ Mo ≠ 2) (hG : G ≠ 0) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LK DB T R Mo G)
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
          Fits Γ Types.nodeU R ∧ (rd M (T + 32)).toNat < 16 ∧ rd M (T + 8) ≠ 1))
      Spec.Mpt.Dec.wdBranch (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  unfold Spec.Mpt.Dec.wdBranch
  refine gp_decJv ha.hH
    (L1 := fun v m => (∃ BR : BitVec 64, v = .val (.word BR)) ∧ LK DB T R Mo G m ∧
      m.lookup (nm "br") = some v)
    (E1 := fun v Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
      Fits Γ Types.nodeU R ∧ (rd M (T + 32)).toNat < 16 ∧ rd M (T + 8) ≠ 1 ∧
      ∀ BR : BitVec 64, v = .val (.word BR) → BrO p0 Γ BR)
    (fun s _ hL v hv => ⟨⟨_, Spec.Mpt.Dec.ev_ld hL.2.1 16 v hv⟩,
      lk_set hL (by decide) (by decide) (by decide) (by decide) (by decide) v,
      by simp [setVarHOLFinite, FUPDATE]⟩)
    (fun s Γ q hL hE v hv => ⟨hE.1, hE.2.1, hE.2.2.1, hE.2.2.2.1, hE.2.2.2.2, fun BR hBR => ?_⟩) ?_
    (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) t o h)
  · rw [Spec.Mpt.Dec.ev_ld hL.2.1 16 v hv] at hBR
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hBR
    subst hBR
    exact (frG_unfold hE.1 hT).2.2.2.2.1 hE.2.2.2.2
  intro v
  by_cases hw : ∃ BR : BitVec 64, v = .val (.word BR)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨BR, rfl⟩ := hw
  refine gp_decJv ha.hH
    (L1 := fun v m => (∃ I : BitVec 64, v = .val (.word I)) ∧ LBr0 DB T R Mo G BR m ∧
      m.lookup (nm "i") = some v)
    (E1 := fun v Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
      (BrO p0 Γ BR ∧ Fits Γ Types.nodeU R) ∧ rd M (T + 8) ≠ 1 ∧
      ∀ I : BitVec 64, v = .val (.word I) → I.toNat < 16)
    (fun s _ hL v hv => ⟨⟨_, Spec.Mpt.Dec.ev_ld hL.2.1.2.1 32 v hv⟩,
      lbr0_set ⟨hL.2.1, hL.2.2⟩ (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) v, by simp [setVarHOLFinite, FUPDATE]⟩)
    (fun s Γ q hL hE v hv => ⟨hE.1, hE.2.1, ⟨hE.2.2.2.2.2 BR rfl, hE.2.2.1⟩, hE.2.2.2.2.1, fun I hI => ?_⟩) ?_
    (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) t o h)
  · rw [Spec.Mpt.Dec.ev_ld hL.2.1.2.1 32 v hv] at hI
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hI
    subst hI
    exact hE.2.2.2.1
  intro v
  by_cases hw : ∃ I : BitVec 64, v = .val (.word I)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨I, rfl⟩ := hw
  by_cases hI : I.toNat < 16
  swap
  · exact hoareG_false fun s _ h => by
      obtain ⟨_, Γ, q, _, _, _, hE⟩ := h
      exact hI (hE.2.2.2.2 I rfl)
  refine hoareG_pre (wdBrI_G ha hL0 hsp0 (DB := DB) (R := R) (BR := BR) hT hMo hG hI) (fun s _ h => ?_)
  obtain ⟨hl, Γ, q, he, hh, hsc, hE⟩ := h
  exact ⟨⟨hl.2.1, hl.2.2⟩, Γ, q, he, hh, hsc, hE.1, hE.2.1, hE.2.2.1, hE.2.2.2.1⟩

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.wdBrI_G
#print axioms InitECandidate.Solver.MemSafe.Dn.wdBranch_G
