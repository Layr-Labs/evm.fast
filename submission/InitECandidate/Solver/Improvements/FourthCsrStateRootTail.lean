import InitECandidate.Solver.Improvements.FourthCsrStateBudgets
set_option autoImplicit false
set_option maxHeartbeats 0
namespace FourthCsrState
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie
variable {σ : Type}

theorem state_root_tail {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M OUT : BitVec 64}
    (hstate : (nm "state_mpt", .val (.word M)) ∈ B)
    (hout : (nm "out", .val (.word OUT)) ∈ B)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    CH σ (GI a (fun m => ∃ I : BitVec 64, LV ((nm "i", .val (.word I)) :: B) m)
      (IM a (fun _ => True) C NR SW AW ND M))
      (.seq (.call (some (none, none)) (nm "mpt_root") [lv (nm "state_mpt"), lv (nm "out")])
        (.return (cw 0)))
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) rootBound := by
  refine ch_exL fun I => ?_
  let B2 : List (MlS × ValueHOL 64) := (nm "i", ValueHOL.val (.word I)) :: B
  refine gc_seq (L := LV B2) (E := fun _ _ _ => True) ?_ ?_
  · refine gc_callX ha (cs := []) (capSub_nil _) (sa_mpt_root hCb haH) (funSpec_true _)
      (by simp [mrSig]) (fun h => by simp [mrSig] at h) cc_mr ?_ ?_ ?_
    · intro s Γ q hs hL hh hE vs hvs callee
      have hev : evs s [lv (nm "state_mpt"), lv (nm "out")] = some [.val (.word M), .val (.word OUT)] :=
        evs_cons (lv_ev hL (List.mem_cons_of_mem _ hstate))
          (evs_cons (lv_ev hL (List.mem_cons_of_mem _ hout)) evs_nil)
      rw [hev] at hvs
      cases hvs
      have hb := hOutB s Γ q hh
      rw [hCb] at hb
      exact preMr_of_heap haC haH hh callee (argsOK_ab hb) hE.2.2.1.1.2.2.2.2.2
    · intro s Γ q hs hL hh hE vs hvs
      have hev : evs s [lv (nm "state_mpt"), lv (nm "out")] = some [.val (.word M), .val (.word OUT)] :=
        evs_cons (lv_ev hL (List.mem_cons_of_mem _ hstate))
          (evs_cons (lv_ev hL (List.mem_cons_of_mem _ hout)) evs_nil)
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

#print axioms state_root_tail
end FourthCsrState
