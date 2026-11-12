import InitECandidate.Solver.MemSafe.Entry.Main
import InitECandidate.Solver.MemSafe.Frames.RootX
import InitECandidate.Solver.MemSafe.Frames.SCGuestJL
import InitECandidate.Solver.MemSafe.Frames.GcrLib

/-!
# Entry2: `FoPre` survives callees with state-object footprints

`fi_keep`: a callee whose `SumCore` writes only `prot` cells of state objects (and keeps `ev` /
`cur_cont` / the journal globals' `JrNZ`) keeps `G`, the allocator pointers and `FoPre M msg`
(`RootMsgX`, `NewPreG`, the `ev` / `cur_cont` words, `JrNZ`, the message gas cell).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem fi_keep {M : Nat} {msg : BitVec 64} {sg : Sig}
    {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s) (hargs : ArgsOK guestC Γ p sg.params vs)
    (hfo : FoPre M msg Γ s) (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw)
    (hc : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun a => ProtCell guestC Γ a ∧ StCell guestSt Γ a) Γ s vs r t Γ' p p') :
    G guestC (Hooks.guestHooksR (σ := σ)) Γ' t ∧ ptrsOf t = some p' ∧ FoPre M msg Γ' t ∧
      RunT guestC (Hooks.guestHooksR (σ := σ)) sg.gw Γ s Γ' t p p' := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨⟨⟨M0, hM0⟩, hB⟩, hnp, ⟨e0, he0⟩, ⟨c0, hc0⟩, hJ, hgas⟩ := hfo
  have hpk := protKeep_nst_of_sumCore hG hargs hc
  have hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) sg.gw Γ s Γ' t p p' :=
    runT_of_sumCore (fun g h => h) hc
      (by obtain ⟨q, hq, hord, hL, -⟩ := id hG
          exact bkeep_of_sumCore hG hargs hc
            (fun a h => not_kCell_of_stCell guestSt_blockTys hord hL h.2))
  have hext := hc.2.2.2.1
  have hmk := msgKeep_of_protKeepS hpk
  obtain ⟨hMΓ, hMb, hMt, hMs⟩ := hM0
  have hmt : M0.ty ∈ msgTys := by rcases hMt with h' | h' <;> rw [h'] <;> decide
  have hpa := msg_addrProt hMt
  have hpg5 : (guestC.ty M0.ty).slot 5 = .prot := by
    rcases hMt with h' | h' <;> rw [h']
    · exact msg_gasProt.1
    · exact msg_gasProt.2
  have hg40 : fld t.memory msg 40 = fld s.memory msg 40 := by
    have := hmk M0 hMΓ hmt 5 (by unfold Obj.HasSlot; omega) hpg5
    unfold fld; rw [← hMb]; exact this
  have hev : gword t nmEv = gword s nmEv := by
    unfold gword; rw [hrun.2.2.2.2.2.2.1 _ hF.pgEv hgw.1]
  have hcc : gword t nmCC = gword s nmCC := by
    unfold gword; rw [hrun.2.2.2.2.2.2.1 _ hF.pgCC hgw.2]
  refine ⟨hc.2.2.2.2.2.1, hc.2.1, ⟨⟨?_, ?_⟩, newPreG_keepS hnp hpk hext, ⟨e0, hev.trans he0.1, he0.2⟩,
    ⟨c0, hcc.trans hc0.1, hc0.2⟩, jrNZ_sumCore (by decide) hJo hc hJ, by rw [hg40]; exact hgas⟩, hrun⟩
  · obtain ⟨M', hM', -⟩ := msgObj_ext hext ⟨hMΓ, hMb, hMt, hMs⟩
    exact ⟨M', hM'⟩
  · intro p'' hp'' k hk'
    obtain rfl := ptrs_some hc.2.1 hp''
    have hkeep : fld t.memory msg k = fld s.memory msg k := by
      simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk'
      rcases hk' with rfl | rfl
      · have := hmk M0 hMΓ hmt 2 (by unfold Obj.HasSlot; omega) hpa.1
        unfold fld; rw [← hMb]; exact this
      · have := hmk M0 hMΓ hmt 4 (by unfold Obj.HasSlot; omega) hpa.2
        unfold fld; rw [← hMb]; exact this
    rw [hkeep]
    exact bufOK_runT hG hrun (hB p hc.1 k hk')

end InitECandidate.Solver.MemSafe.Entry2

#print axioms InitECandidate.Solver.MemSafe.Entry2.fi_keep
