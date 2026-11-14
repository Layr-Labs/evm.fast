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
namespace InitECandidate.Solver.MemSafe.CsrInnerCost
variable {σ : Type}
def capMax : Nat := 4127616
def innerBound : Nat := (capMax+1)*(cb csr_e_1+1)
theorem inner_loop {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
 (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
 (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
 (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
 {kv : List (MlS × ValueHOL 64)} {C NR SW AW ND M VB INN CP : BitVec 64}
 (hinn : (nm "inner", .val (.word INN)) ∈ kv)
 (hvb : (nm "vbuf", .val (.word VB)) ∈ kv) (hmpt : (nm "mpt", .val (.word M)) ∈ kv)
 (hcnt : (nm "icount", .val (.word CP)) ∈ kv) (hCP : CP.toNat ≤ capMax)
 (hfr : ∀ p ∈ kv, p.1 ≠ nm "j" ∧ p.1 ≠ nm "e" ∧ p.1 ≠ nm "v" ∧ p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc")
 {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
 CH σ (fun s => GI a (fun m => ∃ J : BitVec 64, Trie.LV ((nm "j", .val (.word J)) :: kv) m)
   (IA a K C NR SW AW ND M VB) s ∧ CsrCost.DataLoop.CounterAtMost (nm "j") capMax s)
   (.while (.cmp .less (lv (nm "j")) (lv (nm "icount"))) csr_e_1)
   (GP a (fun m => ∃ J : BitVec 64, Trie.LV ((nm "j", .val (.word J)) :: kv) m)
    (IA a K C NR SW AW ND M VB) Rv) innerBound := by
 unfold innerBound
 refine CsrCost.gc_while_bounded ha.hH (by decide : capMax < 2^63)
   (ch_pre (cstage_e ha haC hCb haH hgr hcI hK hinn hvb hmpt hfr) (fun s hs hp => hp.1))
   (fun s hs hp hc => hp) (noContB_sound _ (by decide_cbv))
   (stepsB_sound (nm "j") true _ (by decide_cbv)) ?_
 intro s hs ⟨⟨J,hL⟩,Γ,q,he,hh,hsc,hE⟩
 exact ⟨CP,lv_ev hL (List.mem_cons_of_mem _ hcnt),hCP⟩
#print axioms inner_loop
end InitECandidate.Solver.MemSafe.CsrInnerCost
