import InitECandidate.Solver.MemSafe.Ins.DelDescLeaf

set_option autoImplicit false

/-!
# Stores into a fresh descent record
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

/-- The cells of the record at `R` written so far. -/
def RFl (R : BitVec 64) (M : Mem) (l : List (Nat × BitVec 64)) : Prop :=
  ∀ p ∈ l, rd M (R + BitVec.ofNat 64 p.1) = p.2

theorem rfl_nil (R : BitVec 64) (M : Mem) : RFl R M [] := fun p hp => by simp at hp

/-- **`st fr + k, e`** into the fresh record `R` (cell `k`, a multiple of 8 below 40). -/
theorem gp_stRec {a : Act σ} (ha : ActOK a X) {kv : List (MlS × BitVec 64)} {fr : MlS}
    {R V : BitVec 64} {e : ExpHOL 64} {k : Nat} (hk : k < 40) (hk8 : k % 8 = 0) {hi : Nat}
    (hhi : hi < 2 ^ 64) {T : BitVec 64} {l : List (Nat × BitVec 64)}
    (hnew : ∀ p ∈ l, p.1 ≠ k) (hl40 : ∀ p ∈ l, p.1 < 40) {P : Gam → Ptrs → Prop}
    (hfr : (fr, R) ∈ kv) (hev : ∀ s : State σ, LKV kv s.locals → ev s e = some (.val (.word V)))
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ X (GI a (LKV kv)
        (fun Γ q M => P Γ q ∧ FrD a R Γ q ∧ DlG a Γ q M (R.toNat + 40) hi T ∧ RFl R M l))
      (.store (.op .add [lv fr, cw k]) e)
      (GP a (LKV kv)
        (fun Γ q M => P Γ q ∧ FrD a R Γ q ∧ DlG a Γ q M (R.toNat + 40) hi T ∧
          RFl R M ((k, V) :: l)) Rv) := by
  have hA : ∀ s : State σ, LKV kv s.locals →
      ev s (.op .add [lv fr, cw k]) = some (.val (.word (R + BitVec.ofNat 64 k))) :=
    fun s hL => ev_add_cw (hL _ hfr) k
  refine gp_stOut ha (A := R + BitVec.ofNat 64 k) (fun s hL => hA s hL) ?_
    (fun s v hL hv => ⟨V, by rw [hev s hL] at hv; exact (Option.some.inj hv).symm⟩) ?_
  · intro Γ q M ⟨hP, hF, hD, hR⟩
    obtain ⟨h8, h64, hfc⟩ := hF
    have hAt : (R + BitVec.ofNat 64 k).toNat = R.toNat + k := Spec.Mpt.Dec.toNat_add_lt (by omega)
    obtain ⟨hni, hna, -⟩ := hfc (R + BitVec.ofNat 64 k) ⟨by rw [hAt]; omega, by rw [hAt]; omega,
      by rw [hAt]; omega⟩
    exact ⟨hni, hna⟩
  · intro s Γ q V' hL ⟨hP, hF, hD, hR⟩ hv'
    have hV : V' = V := by
      rw [hev s hL] at hv'
      have := Option.some.inj hv'
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
      exact this.symm
    subst hV
    have h64 := hF.2.1
    have hAt : (R + BitVec.ofNat 64 k).toNat = R.toNat + k := Spec.Mpt.Dec.toNat_add_lt (by omega)
    refine ⟨hP, hF, dl_upd_out hhi (by rw [hAt]; omega) hD, ?_⟩
    intro p hp
    rcases List.mem_cons.mp hp with rfl | hp
    · exact Struct.rd_upd_self ..
    · have hp1 := hl40 p hp
      have hp2 := hnew p hp
      have hpt : (R + BitVec.ofNat 64 p.1).toNat = R.toNat + p.1 :=
        Spec.Mpt.Dec.toNat_add_lt (by omega)
      rw [Struct.rd_upd_ne (fun e => by have := congrArg BitVec.toNat e; rw [hpt, hAt] at this; omega)]
      exact hR p hp

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.gp_stRec
