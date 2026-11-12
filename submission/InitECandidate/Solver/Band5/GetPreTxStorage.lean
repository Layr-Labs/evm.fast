import InitECandidate.Solver.Band3.WsGetStorage
import InitECandidate.Solver.Band3.GetStorageOriginal

/-! # Band item #15: `get_pre_tx_storage`. `gptsCondCost`, Pre `True`, from `G` and `hGT`. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band5
open InitECandidate.Solver.Band3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type}

def gptsBody : ProgHOL 64 :=
  .decCall (nm "v") (.comb [.one, .one]) (nm "stor_lookup")
        [ldG "bs" 32, lv (nm "addr"), lv (nm "key")]
        (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "v"))) (cw 0))
            (.return (.load sh4 (.rfield 1 (lv (nm "v"))))) .skip)
          (.seq (callD (nm "record_pre_state_read") [lv (nm "addr")])
            (.decCall (nm "r") sh4 (nm "ws_get_storage") [lv (nm "addr"), lv (nm "key")]
              (.return (lv (nm "r"))))))

theorem entry_gpts : fnEntry Guest.Software.guestFn_get_pre_tx_storage =
    (nm "get_pre_tx_storage", params_wgs, gptsBody, sh4) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_gpts : guestCode (nm "get_pre_tx_storage") = some (params_wgs, gptsBody, sh4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 421) (by decide)) ⟨_, rfl⟩
    entry_gpts

def gptsB : Nat := 1 + bStor + (max 0 0 + (1 + bRpsr + 0 + (1 + wgsB + 0)))

set_option linter.unusedVariables false in
/-- **Band item #15**: `get_pre_tx_storage`'s conditional cost, from `G` alone. -/
theorem gpts_condCost
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "get_pre_tx_storage")
      gsoSig (fun _ _ _ => True) gptsB := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_gpts (by decide) hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, -⟩ hg
  obtain ⟨w, hw, hbw⟩ := auxA_init2 (sg := gsoSig) rfl hargs (callee := callee) hA
  have main : Inv.CostP σ guestCtx (PGt Types.guestC (Hooks.guestHooksR (σ := σ))
      (AuxA (nm "addr") 20)) gptsBody gptsB := by
    unfold gptsBody gptsB
    refine costP_decCall_S hH (Aux' := AuxA (nm "addr") 20) (PreC := fun _ _ => True) cs_stor
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "stor_lookup") (B := bStor) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ _ vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v _ hG hA hvs _ hcore hq =>
        auxA_step hA (stp_of_core_s hH hG hcore) (lk_sv (by decide) v st s.locals)) ?_
    refine costP_guard ?_
    refine costP_seq_callD_S hH (Aux' := AuxA (nm "addr") 20) (PreC := fun _ _ => True) cs_rpsr
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "record_pre_state_read") (B := bRpsr) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ hA vs hvs callee => by
        obtain ⟨A, hAl, hb⟩ := hA
        exact ⟨argsOK_addr20 rfl hAl hb hvs, reqOK_anyG rpsrCaps_any⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs _ hcore hq =>
        auxA_step hA (stp_of_core_s hH hG hcore) rfl) ?_
    refine Band.costP_decCall (wgs_condCost (σ := σ) hGT) ?_ (funSpec_true _) ?_
    · intro s _ hP vs hvs callee
      obtain ⟨Γ, p, hG, hp, -⟩ := hP
      exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
        hargs_any (by simp [wgsSig]) rfl hvs, trivial⟩
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost (cost_return _)
  exact main s hs ⟨Γ, p, hG, hp, w, by rw [hloc]; exact hw, hbw⟩ hg

end InitECandidate.Solver.Band5

#print axioms InitECandidate.Solver.Band5.gpts_condCost

