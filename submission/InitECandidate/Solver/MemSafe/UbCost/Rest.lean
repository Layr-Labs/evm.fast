import InitECandidate.Solver.MemSafe.UbCost.Facts
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.Band6
namespace InitECandidate.Solver.MemSafe.UbCost
variable {σ : Type}
def restB : Nat := 0+(0+(loop2B+0))
theorem rest_body_cost {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {IDX : BitVec 64} (O : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 ((Eb IDX).set (nm "outer") (.val (.word O))) (FL2 O))
      (.seq (.assign .local (nm "cap") (ld1 (add2 (lvv "outer") 24)))
        (.seq (.assign .local (nm "i") (cw 0)) (.seq ubLoop2 (.return (cw 0))))) restB := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  let P : State σ → Prop := PE ubc Γ0 s0 p0 ((Eb IDX).set (nm "outer") (.val (.word O))) (FL2 O)
  have hCapTyped : Hoare σ guestCtx P (.assign .local (nm "cap") (ld1 (add2 (lvv "outer") 24)))
      (fun r t => r = none → P t) :=
    inv_of_hoareG (hassignU hH (by simp (config := {decide := true}) [Eb,E0,Env.set]))
  have hCap : InitECandidate.Solver.SourceCost.HoareN σ P
      (.assign .local (nm "cap") (ld1 (add2 (lvv "outer") 24))) CapBound := by
    refine InitECandidate.Solver.SourceCost.hoare_assign fun s hp v hv => ?_
    obtain ⟨Γ,hIV,hLL,hFF⟩ := hp
    have he : ev s (lvv "outer") = some (.val (.word O)) :=
      hLL _ _ (by simp [Env.set])
    obtain ⟨C,rfl,hCM⟩ := loaded_count_bound (Struct.trk_G hIV.1) (by decide) hFF he hv
    exact ⟨C,by simp [setVarHOLFinite,FUPDATE],hCM⟩
  have hItyped : HoareG σ guestCtx P (.assign .local (nm "i") (cw 0))
      (RR ubc Γ0 s0 p0 (LE (EL2 (Eb IDX) O (BitVec.ofNat 64 0)) (FL2 O))) := by
    refine hoareG_conseq (hassignT hH (fun v => v = .val (.word (BitVec.ofNat 64 0))) ?_)
      (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun Γ t ⟨v',hv',hl⟩ => ?_) hq)
    · intro Γ s' v hP hv
      rw [ev_cw] at hv
      exact (Option.some.inj hv).symm
    · subst hv'
      exact hl
  have hIcap : InitECandidate.Solver.SourceCost.HoareN σ CapBound
      (.assign .local (nm "i") (cw 0)) CapBound := by
    refine InitECandidate.Solver.SourceCost.hoare_assign fun s hp v hv => ?_
    obtain ⟨C,hC,hCM⟩ := hp
    exact ⟨C,by simpa (config := {decide := true}) [setVarHOLFinite,FUPDATE] using hC,hCM⟩
  unfold restB
  refine Inv.costP_seq (R := fun s => P s ∧ CapBound s)
    (Inv.costP_of_cost (cost_assign _ _ _)) ?_ ?_
  · intro s hs hp ht hr
    exact ⟨hCapTyped s hs hp ht hr,hCap s hp hr⟩
  · refine Inv.costP_seq (R := fun s => PE ubc Γ0 s0 p0 (EL2 (Eb IDX) O (BitVec.ofNat 64 0)) (FL2 O) s ∧ CapBound s)
      (Inv.costP_of_cost (cost_assign _ _ _)) ?_ ?_
    · intro s hs ⟨hp,hcap⟩ ht hr
      exact ⟨inv_of_hoareG hItyped s hs hp ht hr,hIcap s hcap hr⟩
    · refine Inv.costP_seq (R := fun _ => True) (loop2_cost hGT Ent hgs (IDX := IDX) (E := Eb IDX) ?_ ?_ O)
        (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost (cost_return _))
      · intro x hx
        simp only [ubNames4,ubNames3,List.mem_cons,List.not_mem_nil,or_false] at hx
        rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
          simp (config := {decide := true}) [Eb,E0,Env.set]
      · simp (config := {decide := true}) [Eb,E0,Env.set]
#print axioms rest_body_cost
end InitECandidate.Solver.MemSafe.UbCost
