import InitECandidate.Solver.MemSafe.CsrStateCost.Loop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie InitECandidate.Solver.Band7
namespace InitECandidate.Solver.MemSafe.CsrStateCost
variable {σ : Type}
def rootTail : ProgHOL 64 := .seq (.call (some (none, none)) (nm "mpt_root") [lv (nm "state_mpt"),lv (nm "out")]) (.return (cw 0))
theorem root_tail {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = guestC)
 (hCb : a.Cb = guestC) (haH : a.H = guestHooksR (σ := σ))
 {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M OUT : BitVec 64}
 (hstate : (nm "state_mpt", .val (.word M)) ∈ B) (hout : (nm "out", .val (.word OUT)) ∈ B)
 (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
 (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
 {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
 (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
 CH σ (GI a (Trie.LV B) (IM a (fun _ => True) C NR SW AW ND M)) rootTail
  (GP a (fun _ => False) (fun _ _ _ => True) Rv) (1+tb (nm "mpt_root")+0+0) := by
  unfold rootTail
  refine gc_seq (L := Trie.LV B) (E := fun _ _ _ => True) ?_ ?_
  · refine gc_callX ha (cs := []) (capSub_nil _) (sa_mpt_root hCb haH) (funSpec_true _)
      (by simp [mrSig]) (fun h => by simp [mrSig] at h) cc_mr ?_ ?_ ?_
    · intro s Γ q hs hL hh hE vs hvs callee
      have hev : evs s [lv (nm "state_mpt"), lv (nm "out")] = some [.val (.word M), .val (.word OUT)] :=
        evs_cons (lv_ev hL (hstate))
          (evs_cons (lv_ev hL (hout)) evs_nil)
      rw [hev] at hvs
      cases hvs
      have hb := hOutB s Γ q hh
      rw [hCb] at hb
      exact preMr_of_heap haC haH hh callee (argsOK_ab hb) hE.2.2.1.1.2.2.2.2.2
    · intro s Γ q hs hL hh hE vs hvs
      have hev : evs s [lv (nm "state_mpt"), lv (nm "out")] = some [.val (.word M), .val (.word OUT)] :=
        evs_cons (lv_ev hL (hstate))
          (evs_cons (lv_ev hL (hout)) evs_nil)
      rw [hev] at hvs
      cases hvs
      exact ⟨argsOK_ab (hOutB s Γ q hh), fun x hx => hOutF x (argCells_ab hx), fun callee => ⟨M, OUT, rfl, mrecF_of_hRec hh.2.1 hE.2.2.1.1⟩⟩
    · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
      exact ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun _ => trivial⟩
  · refine gc_ret ha.hH ?_
    intro s Γ q hs hL he hh hE v hv
    rw [ev_cw] at hv
    cases hv
    exact hRv Γ q s.memory
#print axioms root_tail
end InitECandidate.Solver.MemSafe.CsrStateCost
