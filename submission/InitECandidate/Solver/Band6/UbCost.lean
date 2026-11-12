import InitECandidate.Solver.Band6.UbC5
import InitECandidate.Solver.MemSafe.Stor3.Final

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

/-!
# `update_builder_from_tx`'s conditional cost (Band6)

`ub_condCost`: `CondCost … (nm "update_builder_from_tx") biSig UbPre bUB`, unconditional in the
`ws_get_storage` summary (it is supplied by `Dn.csumm_wgs_Fin`).
-/

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

section c8
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

def bAW : Nat := (2 ^ 64 + 1) * (bL1 + 1) + bRB

theorem c_aw (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) (IDX A : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 ((Eb IDX).set (nm "aw") (.val (.word A))) (FL A))
      (.dec (nm "cap") .one (ld1 (add2 (lvv "aw") 24))
        (.dec (nm "i") .one (cw 0) (.seq ubLoop1 ubRest))) bAW := by
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
  · refine Inv.CostP.pre (c_rest hGT Ent hgs IDX) (fun s _ ⟨IW, Γ, hIV, hl⟩ => ⟨Γ, hIV, ?_⟩)
    refine le_mono ?_ (fun _ _ => trivial) hl
    intro x w h
    by_cases hx : x = nm "idx"
    · subst hx
      simp (config := {decide := true}) [Eb, E0, Env.set] at h
      subst h
      simp (config := {decide := true}) [EL, E0, Env.set]
    · simp (config := {decide := true}) [Eb, E0, Env.set, hx] at h

theorem c_main (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 E0 (fun _ => True)) ubBody bAW := by
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
    exact c_aw hGT Ent hgs IDX A s hs ⟨Γ, hIV, hLL, hA⟩ hg

end c8

/-- The `ws_get_storage` summary, from stage 2b. -/
theorem hgs_R : HGS σ :=
  Dn.csumm_wgs_Fin (Dn.staged_of_tv Dn.vty_tVAL Dn.nval_tVAL) Dn.cfg_hWSz Dn.cfg_hWS4

theorem hGT_ws : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR) := by decide

/-- **`update_builder_from_tx`'s conditional cost.** -/
theorem ub_condCost :
    CondCost σ guestCtx guestC (guestHooksR (σ := σ)) (nm "update_builder_from_tx") biSig UbPre bAW := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, rfl⟩ := Band.lookupCode_nil code_update_builder_from_tx hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, hpre⟩ hg
  obtain ⟨-, hbs, hts, hba, hkb, hia, his, hsk⟩ := hpre
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG
  rw [hp] at hq0
  cases hq0
  have Ent : UbEnt Γ s p := ⟨hord0, hL0, hbs, hts, hba, hkb, hia, his, hsk⟩
  exact c_main hGT_ws Ent hgs_R s hs
    ⟨Γ, ⟨Struct.trk_refl hG hp, fun g _ => rfl⟩, fun x w h => absurd h (by simp [E0]), trivial⟩ hg

/-- The literal bound. -/
def bUB : Nat :=
  4081774914776526801994342856258335214786233812941513267855060749915296337060237131737786

theorem bAW_eq : bAW = bUB := by decide +kernel

/-- **`update_builder_from_tx`'s conditional cost, literal bound.**
`CondCost … (nm "update_builder_from_tx") biSig UbPre bUB` (the shape of F3's `Ptx.HypUbCost σ bUB`). -/
theorem ub_condCost_lit :
    CondCost σ guestCtx guestC (guestHooksR (σ := σ)) (nm "update_builder_from_tx") biSig UbPre
      4081774914776526801994342856258335214786233812941513267855060749915296337060237131737786 :=
  Inv.CalleeCostP.mono ub_condCost (by decide +kernel)

end InitECandidate.Solver.Band6

#print axioms InitECandidate.Solver.Band6.c_aw
#print axioms InitECandidate.Solver.Band6.c_main
#print axioms InitECandidate.Solver.Band6.ub_condCost
#print axioms InitECandidate.Solver.Band6.ub_condCost_lit
