import InitECandidate.Solver.MemSafe.Ins.ValKit

set_option autoImplicit false

/-!
# Store rules for the trie insert / delete proofs

* `gp_stWX`: `gp_stWH` with a store address that depends on the state (a child slot indexed by a
  loaded nibble); the typing obligation `hfit` sees the address and the value.
* `loadByte_lt16`: a byte load at an address whose byte is a nibble returns a word `< 16`.
* node slot lemmas for the child slots of a branch and the value slots.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem gp_stWX {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {ea e : ExpHOL 64}
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V))
    (hfit : ∀ (s : State σ) Γ q (A V : BitVec 64), L s.locals → Heap a Γ q s → E Γ q s.memory →
      ev s ea = some (.val (.word A)) → ev s e = some (.val (.word V)) →
      ∃ o ∈ Γ, ∃ j, o.HasSlot j ∧ (a.Cb.ty o.ty).slot j ≠ .prot ∧ A = o.cell j ∧
        Fits Γ ((a.Cb.ty o.ty).slot j) V)
    (hE : ∀ (s : State σ) Γ q (A V : BitVec 64), L s.locals → Heap a Γ q s → E Γ q s.memory →
      ev s ea = some (.val (.word A)) → ev s e = some (.val (.word V)) →
      E' Γ q (Struct.upd s.memory A V)) :
    HoareG σ X (GI a L E) (.store ea e) (GP a L E' Rv) := by
  refine gp_store fun s Γ q hs hL hh hEs w v mem hw hv' hmem => ?_
  obtain ⟨V, rfl⟩ := hv s v hL hv'
  have hm := Struct.store_word hmem
  rw [flat_word] at hmem
  obtain ⟨hmod, -⟩ := Helpers.store1_mod hmem
  obtain ⟨o, ho, j, hj, hnp, hA, hF⟩ := hfit s Γ q w V hL hh hEs hw hv'
  have hW : WCell a.C Γ w := ⟨o, ho, j, hj, by rw [ha.hupg]; exact hnp, hA⟩
  refine ⟨heap_write ha hh hmod (fun x hx => Or.inr (hx ▸ hW)) (fun o' ho' k hk hx => ?_)
    (fun x hx => hx ▸ foot_of_wcell hh ha.hord0 ha.hsz0 hW), ?_⟩
  · obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' ho hk hj (hx.trans hA)
    rw [hx, hm, Struct.rd_upd_self, ha.hupg]
    exact hF
  · rw [hm]
    exact hE s Γ q w V hL hh hEs hw hv'

/-- A byte load at an address whose byte is a nibble. -/
theorem loadByte_lt16 {s : State σ} {ea : ExpHOL 64} {A : BitVec 64} {v : ValueHOL 64}
    (hA : ev s ea = some (.val (.word A))) (hn : Spec.Mpt.byteOf s.memory s.be A < 16)
    (h : ev s (.loadByte ea) = some v) : ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat < 16 := by
  simp only [ev, evalHOLExact] at h hA
  rw [hA] at h
  obtain ⟨b, hb, rfl⟩ := Option.map_eq_some_iff.mp h
  refine ⟨_, rfl, ?_⟩
  unfold panMemLoadByteHOL at hb
  dsimp only at hb
  split at hb
  · simp only [Option.some.injEq] at hb
    subst hb
    unfold Spec.Mpt.byteOf at hn
    have hrd : rd s.memory (panByteAlignHOL A) = (s.memory (panByteAlignHOL A)).1 := by
      unfold rd; cases s.memory (panByteAlignHOL A); rfl
    rw [hrd] at hn
    simp only [BitVec.toNat_ofNat]
    exact lt_of_le_of_lt (Nat.mod_le _ _) hn
  · simp at hb

/-- Slots `j` of an `NBRANCH` object. -/
theorem nbranch_slot {o : Obj} (ht : o.ty = Types.tNBRANCH)
    (hsz : (Types.guestC.ty o.ty).minSz ≤ o.size) {j : Nat} (hj0 : 1 ≤ j) (hj : j < 20) :
    o.HasSlot j ∧ (Types.guestC.ty o.ty).slot j ≠ .prot := by
  rw [ht, Types.ty_NBRANCH] at hsz ⊢
  simp only [Types.nbranchTy] at hsz
  unfold Obj.HasSlot
  refine ⟨by omega, ?_⟩
  interval_cases j <;> simp [Types.nbranchTy, TyD.slot]

theorem nbranch_child {o : Obj} (ht : o.ty = Types.tNBRANCH) {j : Nat} (h1 : 4 ≤ j) (h2 : j ≤ 19) :
    (Types.guestC.ty o.ty).slot j = Types.nodeU := by
  rw [ht, Types.ty_NBRANCH]
  interval_cases j <;> simp [Types.nbranchTy, TyD.slot]

theorem nbranch_val {o : Obj} (ht : o.ty = Types.tNBRANCH) {j : Nat} (h1 : 20 ≤ j) (h2 : j ≤ 21) :
    (Types.guestC.ty o.ty).slot j = .prot := by
  rw [ht, Types.ty_NBRANCH]
  interval_cases j <;> simp [Types.nbranchTy, TyD.slot]

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.gp_stWX
#print axioms InitECandidate.Solver.MemSafe.Ins.loadByte_lt16
#print axioms InitECandidate.Solver.MemSafe.Ins.nbranch_child
