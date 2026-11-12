import InitECandidate.Solver.MemSafe.Ptx.PcmStep

/-!
# F3c: step lemmas for the callees after `process_message` returned

* `keep_of_core`: a summary core whose extra footprint avoids the cells of the objects satisfying `P` keeps
  their `prot` cells.
* `step_st`: a state-object summary (`StSum`) is a step (`RunT`, `XKeep`, `LstKeep`).
* `stSum_sr`: `state_restore` as a state-object summary.
* `step_cf`: `create_finish`, from `HypCfL`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

theorem keep_of_core {sg : Sig} {PWx : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs} (P : Obj → Prop)
    (hc : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg PWx Γ s vs r t Γ' p p')
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a)
    (hpw : ∀ a, ProtCell guestC Γ a → PWx a → ¬ (∃ o ∈ Γ, P o ∧ InO o a)) :
    ∀ o ∈ Γ, P o → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot →
      rd t.memory (o.cell k) = rd s.memory (o.cell k) := by
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  intro o ho hP k hk' hpr
  have hpc : ProtCell guestC Γ (o.cell k) := ⟨o, ho, k, hk', hpr, rfl⟩
  have h := sumCore_protW (PW := fun a => ¬ (∃ o ∈ Γ, P o ∧ InO o a)) hc hG hac hpw
    _ hpc (fun hn => hn ⟨o, ho, hP, inO_cell hord hL ho (k := 8 * k) (by unfold Obj.HasSlot at hk'; omega)⟩)
  unfold rd
  rw [h]

theorem step_core {sg : Sig} {PWx : BitVec 64 → Prop} {Γ Γ' : Gam} {u t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs} {child : BitVec 64}
    (hc : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg PWx Γ u vs r t Γ' p p')
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a)
    (hgw : ∀ g, g ∈ sg.gw → g ∈ [Hooks.gJn]) {e : Obj} (he : e ∈ Γ) (het : e.ty = tEV)
    (heb : e.base = child)
    (hpwM : ∀ a, ProtCell guestC Γ a → PWx a → ¬ (∃ o ∈ Γ, o.ty ∈ msgTys ∧ InO o a))
    (hpwL : ∀ a, ProtCell guestC Γ a → PWx a → ¬ (∃ o ∈ Γ, LstTy o.ty ∧ InO o a))
    (hpwE : ∀ a, ProtCell guestC Γ a → PWx a → ∀ j ∈ evXSlots, a ≠ e.cell j) :
    RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ u Γ' t p p' ∧
      XKeep guestC Γ u.memory t.memory (child, 0) ∧ LstKeep Γ u.memory t.memory := by
  subst heb
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  have hb : BKeep guestC Γ u t := bkeep_of_sumCore' hG hac hc fun a ha hB => by
    obtain ⟨o, ho, hty, k, hk, hpr, rfl⟩ := kCell_keep hB
    exact hpwM _ ⟨o, ho, k, hk, hpr, rfl⟩ ha
      ⟨o, ho, (show o.ty ∈ msgTys from (by decide : ∀ t ∈ keepTys, t ∈ msgTys) _ hty), inO_cell hord hL ho (k := 8 * k) (by unfold Obj.HasSlot at hk; omega)⟩
  have hmsg := keep_of_core (fun o => o.ty ∈ msgTys) hc hG hac hpwM
  have hlst := keep_of_core (fun o => LstTy o.ty) hc hG hac hpwL
  have hsz := ev_size (Hooks.frameCfg_guestHooksR (σ := σ)) hL he het
  refine ⟨runT_of_sumCore hgw hc hb, ⟨fun j hj => ?_, fun o ho hty k hk hpr => hmsg o ho hty k hk hpr⟩,
    fun o ho hty k hk => hlst o ho hty k hk (lstTy_prot hty k)⟩
  have hj' : j ≤ 28 := by simp [evXSlots] at hj; omega
  have hpc : ProtCell guestC Γ (e.cell j) := ⟨e, he, j, by unfold Obj.HasSlot; omega, by
    rw [het]; simp only [evXSlots, List.mem_cons, List.mem_nil_iff, or_false] at hj
    rcases hj with rfl | rfl | rfl | rfl | rfl <;> decide, rfl⟩
  have h := sumCore_protW (PW := fun a => ¬ ∃ j ∈ evXSlots, a = e.cell j) hc hG hac
    (fun a hp hx ⟨j', hj', h'⟩ => hpwE a hp hx j' hj' h') _ hpc (fun hn => hn ⟨j, hj, rfl⟩)
  have h' : rd t.memory (e.base + BitVec.ofNat 64 (8 * j)) = rd u.memory (e.base + BitVec.ofNat 64 (8 * j)) := by
    unfold rd; rw [show e.base + BitVec.ofNat 64 (8 * j) = e.cell j from rfl, h]
  show rd t.memory ((e.base, 0).1 + BitVec.ofNat 64 (8 * j)) = rd u.memory ((e.base, 0).1 + BitVec.ofNat 64 (8 * j))
  exact h'

end InitECandidate.Solver.MemSafe.Ptx
