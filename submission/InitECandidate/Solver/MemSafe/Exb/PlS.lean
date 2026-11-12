import InitECandidate.Solver.MemSafe.Exb.Ph
import InitECandidate.Solver.MemSafe.Exb.WdFresh

set_option autoImplicit false

/-!
# The payload hook's export (package F1a) and `payload_header` without hypotheses

* **`hypPlS : HypPlS σ`**: from `G` at the record family `guestHooksR`, a `tPL` object's transaction slices lie
  in `tVAL` objects (its slice array a `tSLA` object), its withdrawal count is `< 2^32`, and its fee recipient
  `[raw + 32, + 20)` lies in a `tVAL` object (`Hooks.PlW`, produced by `decode_payload` from the input blob that
  `decode_host_input` adopts).
* **`funSpec_payload_header_closed`**: `funSpec_payload_header` with both hypotheses discharged.
-/

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec

theorem hypPlS {σ : Type} : HypPlS σ := by
  intro Γ s o hG ho ht
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := hG
  obtain ⟨-, -, hpl⟩ := Hooks.plW_of_wf ht (hW o ho)
  obtain ⟨-, -, ⟨hsub, hsl⟩, hfee, hN, -⟩ := hpl
  refine ⟨⟨?_, fun i hi => (hsl i hi).2.1⟩, hN, hfee⟩
  rcases hsub with h | ⟨x, hx, hxb, hxt, hxs, hxe⟩
  · exact Or.inl h
  · exact Or.inr ⟨x, hx, hxb, hxt, hxs, hxe⟩

theorem funSpec_payload_header_closed {σ : Type} :
    FunSpec σ guestCtx (nm "payload_header") (fun vs s r t => ∀ v, r = .returned v → ∀ (Γ : Gam) (p : Ptrs),
      G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → ptrsOf s = some p → Aw.Below Γ p.hp → PhPre vs s Γ →
      ∃ (Γ' : Gam) (q' : Ptrs) (PL C : BitVec 64), G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ' t ∧
        ptrsOf t = some q' ∧ Ext Γ Γ' ∧ p.hp ≤ q'.hp ∧ NewFresh Γ Γ' (gp0 p) q' ∧
        ModifiesOnly (fun x => WCell Types.guestC Γ x ∨ ¬ (gp0 p).Allocated x.toNat) s.memory t.memory ∧
        (∀ g ∈ Types.guestC.PG, t.globals.lookup g = s.globals.lookup g) ∧
        PhRy (gp0 p) s.memory PL C Γ' q' t.memory t.globals v ∧
        ∀ SI : BitVec 64, vs = [Wv SI] → PL = rd s.memory (SI + BitVec.ofNat 64 0)) :=
  funSpec_payload_header hypPlS funSpec_wdFresh

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.hypPlS
#print axioms InitECandidate.Solver.MemSafe.Exb.funSpec_payload_header_closed
