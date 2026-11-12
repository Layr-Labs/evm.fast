import InitECandidate.Solver.MemSafe.Init.Main7

/-!
# Init: `main`'s walk, part 8 (everything after the 14 inits)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

theorem cost_htr_verify {Bv : Nat}
    (hV : CondCost σ guestCtx guestC (HR σ) (nm "verify_stateless_new_payload") Band.sgSi VerPre Bv)
    {succ : MlS} {sh : ShapeHOL} {k : ProgHOL 64} {Bk : Nat}
    (hk : ∀ (s : State σ) (v : ValueHOL 64) (st : State σ),
      Inv.CostP σ guestCtx (fun t => t = setVarHOLFinite succ v { st with locals := s.locals }) k Bk) :
    Inv.CostP σ guestCtx PD2
      (.seq (.call (some (none, none)) (nm "htr_new_payload_request") [.var .local (nm "si"), .var .local (nm "root")])
        (.decCall succ sh (nm "verify_stateless_new_payload") [.var .local (nm "si")] k))
      ((1 + tbN "htr_new_payload_request" + 0) + (1 + Bv + Bk)) :=
  Inv.costP_seq (R := PV) (Inv.costP_of_cost (cost_tb "htr_new_payload_request" tb_htr))
    (Spec.hoare_post hoare_htr fun r t _ _ h _ => h.2) (cost_verify_step hV hk)

theorem cost_decs {K : ProgHOL 64} {B : Nat} (hK : Inv.CostP σ guestCtx PI K B) :
    Inv.CostP σ guestCtx WIp
      (.dec (nm "si") .one (.const 0) (.dec (nm "err_code") .one (.const 0) K)) B := by
  refine Inv.costP_dec fun s hs ⟨Γ, hW⟩ v hv hsh => ?_
  refine Inv.costP_dec fun t ht hteq v' hv' hsh' => ?_
  refine hK.pre fun u _ hu => ?_
  subst hu; subst hteq
  have hv0 : v = .val (.word 0) := by
    have : ev s (ExpHOL.const 0) = some (.val (.word 0)) := ev_const _
    rw [this] at hv; exact (Option.some.inj hv).symm
  subst hv0
  refine ⟨⟨Γ, wi_congr rfl hW⟩, 0, ?_⟩
  show ((s.locals.update (nm "si", .val (.word 0))).update (nm "err_code", v')).lookup (nm "si") = _
  rw [lookup_update_ne _ _ (by decide)]
  exact lookup_update_self _ _ _

end InitECandidate.Solver.MemSafe.Init
