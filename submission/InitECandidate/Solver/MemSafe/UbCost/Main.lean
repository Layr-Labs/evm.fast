import InitECandidate.Solver.MemSafe.UbCost.Rest

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

/-!
# `update_builder_from_tx`'s conditional cost (Band6)

`ub_condCost`: `CondCost … (nm "update_builder_from_tx") biSig UbPre bUB`, unconditional in the
`ws_get_storage` summary (it is supplied by `Dn.csumm_wgs_Fin`).
-/

namespace InitECandidate.Solver.MemSafe.UbCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.Band6
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

section c8
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem rest_cost (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) (IDX : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 (Eb IDX) (fun _ => True)) ubRest restB := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubRest
  refine cdecEF hH (G := fun v Γ => ∃ O : BitVec 64, v = .val (.word O) ∧ FL2 O Γ) ?_ ?_
  · intro Γ s' v hP hv
    obtain ⟨A, hA, S, hS, hSb, hSt⟩ := ts_slot Ent hP.1 (k := 4) (j := 32) (th := tHTt20) rfl (by decide)
      (by decide) hv
    exact ⟨A, hA, S, hS, hSb, hSt⟩
  · intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
    obtain ⟨O, rfl, hO⟩ := hFF.2
    exact rest_body_cost hGT Ent hgs O s hs ⟨Γ, hIV, hLL, hO⟩ hg


def ubBound : Nat := (2 ^ 64 + 1) * (bL1 + 1) + restB

theorem aw_cost (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) (IDX A : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 ((Eb IDX).set (nm "aw") (.val (.word A))) (FL A))
      (.dec (nm "cap") .one (ld1 (add2 (lvv "aw") 24))
        (.dec (nm "i") .one (cw 0) (.seq ubLoop1 ubRest))) ubBound := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine cdecE hH (G := fun v => ∃ w : BitVec 64, v = .val (.word w)) ?_ ?_
  · intro Γ s' v hP hv
    exact ev_load1w (by unfold ld1 at hv; exact hv)
  rintro v ⟨CW, rfl⟩
  refine cdecE hH (G := fun v => v = .val (.word (BitVec.ofNat 64 0))) ?_ ?_
  · intro Γ s' v hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  intro v hv
  subst hv
  refine Inv.costP_seq (R := fun t => ∃ IW, PE ubc Γ0 s0 p0 (EL IDX A CW IW) (FL A) t)
    (c_loop1 Ent IDX A CW) ?_ ?_
  · intro s hs hp ht hr
    obtain ⟨Γ, hIV, IW, hl⟩ := inv_of_hoareG (ub_loop1 Ent IDX A CW) s hs hp ht hr
    exact ⟨IW, Γ, hIV, hl⟩
  · refine Inv.CostP.pre (rest_cost hGT Ent hgs IDX) (fun s _ ⟨IW, Γ, hIV, hl⟩ => ⟨Γ, hIV, ?_⟩)
    refine le_mono ?_ (fun _ _ => trivial) hl
    intro x w h
    by_cases hx : x = nm "idx"
    · subst hx
      simp (config := {decide := true}) [Eb, E0, Env.set] at h
      subst h
      simp (config := {decide := true}) [EL, E0, Env.set]
    · simp (config := {decide := true}) [Eb, E0, Env.set, hx] at h

theorem main_cost (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 E0 (fun _ => True)) ubBody ubBound := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubBody
  refine cdecE hH (G := fun v => ∃ w : BitVec 64, v = .val (.word w)) ?_ ?_
  · intro Γ s' v hP hv
    exact ev_gscalar (Struct.trk_G hP.1.1) (by decide) hv
  rintro v ⟨IDX, rfl⟩
  refine cdecEF hH (G := fun v Γ => ∃ A : BitVec 64, v = .val (.word A) ∧ FL A Γ) ?_ ?_
  · intro Γ s' v hP hv
    obtain ⟨A, hA, S, hS, hSb, hSt⟩ := ts_slot Ent hP.1 (k := 2) (j := 16) (th := tHTh20) rfl (by decide)
      (by decide) hv
    exact ⟨A, hA, S, hS, hSb, hSt⟩
  · intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
    obtain ⟨A, rfl, hA⟩ := hFF.2
    exact aw_cost hGT Ent hgs IDX A s hs ⟨Γ, hIV, hLL, hA⟩ hg

end c8

/-- The `ws_get_storage` summary, from stage 2b. -/
theorem hgs_R : HGS σ :=
  Dn.csumm_wgs_Fin (Dn.staged_of_tv Dn.vty_tVAL Dn.nval_tVAL) Dn.cfg_hWSz Dn.cfg_hWS4

theorem hGT_ws : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR) := by decide

/-- **`update_builder_from_tx`'s conditional cost.** -/
theorem ub_condCost_tight :
    CondCost σ guestCtx guestC (guestHooksR (σ := σ)) (nm "update_builder_from_tx") biSig UbPre ubBound := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, rfl⟩ := InitECandidate.Solver.Band.lookupCode_nil code_update_builder_from_tx hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, hpre⟩ hg
  obtain ⟨-, hbs, hts, hba, hkb, hia, his, hsk⟩ := hpre
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG
  rw [hp] at hq0
  cases hq0
  have Ent : UbEnt Γ s p := ⟨hord0, hL0, hbs, hts, hba, hkb, hia, his, hsk⟩
  exact main_cost hGT_ws Ent hgs_R s hs
    ⟨Γ, ⟨Struct.trk_refl hG hp, fun g _ => rfl⟩, fun x w h => absurd h (by simp [E0]), trivial⟩ hg

#print axioms ub_condCost_tight
end InitECandidate.Solver.MemSafe.UbCost

namespace InitECandidate.Solver.MemSafe.UbCost
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Bal
variable {σ : Type}
def ubLit : Nat := 913332101377036023229061587287259898595865548988365893180221558506293497786
theorem ubLit_eq : ubBound = ubLit := by decide +kernel
theorem ub_condCost_lit : CondCost σ guestCtx guestC (guestHooksR (σ := σ))
    (nm "update_builder_from_tx") biSig UbPre ubLit :=
  Inv.CalleeCostP.mono ub_condCost_tight (by rw [ubLit_eq])
#print axioms ub_condCost_lit
end InitECandidate.Solver.MemSafe.UbCost
