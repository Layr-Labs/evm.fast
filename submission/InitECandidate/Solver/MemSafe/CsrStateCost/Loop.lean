import InitECandidate.Solver.MemSafe.CsrCost.Rules
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
def capMax : Nat := 4127616
theorem loopC {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M CP : BitVec 64} 
    (hcap : (nm "acap", ValueHOL.val (.word CP)) ∈ B) (hCP : CP.toNat ≤ capMax)
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "i" :: nsC, p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (fun s => GI a (fun m => ∃ I : BitVec 64, Trie.LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IM a (fun _ => True) C NR SW AW ND M) s ∧ CsrCost.DataLoop.CounterAtMost (nm "i") capMax s) (.while (.cmp .less (.var .local (nm "i")) (lv (nm "acap"))) csr_s3_1)
      (GP a (fun m => ∃ I : BitVec 64, Trie.LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IM a (fun _ => True) C NR SW AW ND M) Rv) ((capMax + 1) * (cb csr_s3_1 + 1)) := by
  refine CsrCost.gc_while_bounded ha.hH (by decide : capMax < 2^63) (ch_pre (cstage_s3 ha haC hCb haH hgr hcI hstate hfr) (fun s _ h => h.1)) (fun s _ h _ => h) (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "i") true _ (by decide_cbv)) ?_
  intro s hs ⟨⟨I,hL⟩,Γ,q,he,hh,hsc,hE⟩
  exact ⟨CP,Trie.lv_ev hL (List.mem_cons_of_mem _ hcap),hCP⟩

#print axioms loopC
theorem loopB {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcC : capSub (HtabEntries.capsHT tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M CP : BitVec 64} 
    (hcap : (nm "cap", ValueHOL.val (.word CP)) ∈ B) (hCP : CP.toNat ≤ capMax)
    (hsw : (nm "sw", ValueHOL.val (.word SW)) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "i" :: Trie.nsB, p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (fun s => GI a (fun m => ∃ I : BitVec 64, Trie.LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IM a (fun _ => True) C NR SW AW ND M) s ∧ CsrCost.DataLoop.CounterAtMost (nm "i") capMax s) (.while (.cmp .less (.var .local (nm "i")) (lv (nm "cap"))) csr_s2_1)
      (GP a (fun m => ∃ I : BitVec 64, Trie.LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IM a (fun _ => True) C NR SW AW ND M) Rv) ((capMax + 1) * (cb csr_s2_1 + 1)) := by
  refine CsrCost.gc_while_bounded ha.hH (by decide : capMax < 2^63) (ch_pre (cstage_s2 ha haC hCb haH hgr hcI hcC hsw hcache hstate hfr) (fun s _ h => h.1)) (fun s _ h _ => h) (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "i") true _ (by decide_cbv)) ?_
  intro s hs ⟨⟨I,hL⟩,Γ,q,he,hh,hsc,hE⟩
  exact ⟨CP,Trie.lv_ev hL (List.mem_cons_of_mem _ hcap),hCP⟩


#print axioms loopB
end InitECandidate.Solver.MemSafe.CsrStateCost
