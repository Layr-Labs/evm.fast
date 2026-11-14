import InitECandidate.Solver.MemSafe.CsrCost.StageI
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie InitECandidate.Solver.Band7
namespace InitECandidate.Solver.MemSafe.CsrCost
variable {σ : Type}
theorem stage_cap {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND OUT : BitVec 64}
    (hnd : (nm "nodedb", ValueHOL.val (.word ND)) ∈ B) (hsw : (nm "sw", ValueHOL.val (.word SW)) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B) (haw : (nm "aw", ValueHOL.val (.word AW)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "cap" :: nsAll, p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    CH σ (GI a (Trie.LV B) (IB a (fun _ => True) C NR SW AW ND)) csr_cap_1
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) bI := by
  refine ⟨(cstage_cap ha haC hCb haH hgr hcI hcH hcC hnd hsw hcache haw hnr hout hfr hOutB hOutF hRv).1, ?_⟩
  unfold csr_cap_1
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨hL, Γ, q, he, hh, hsc, hE⟩ := hp
  have hv' := HtabEntries.ld_w (ev_add2 (Trie.lv_ev hL hsw) (ev_cw s 24)) hv
  subst hv'
  let CP := rd s.memory (SW + BitVec.ofNat 64 24)
  have hCP : CP.toNat ≤ capMax := count_of_heap_fits haC haH hh (by decide) hE.1.2.2.1
  have hL1 : Trie.LV ((nm "cap", .val (.word CP)) :: B)
      (setVarHOLFinite (nm "cap") (.val (.word CP)) s).locals :=
    Trie.lv_cons (Trie.lv_set hL (fun p hp => hfr p hp _ (by simp)) _) (by simp [setVarHOLFinite, FUPDATE])
  have htail := stage_i ha haC hCb haH hgr hcI hcH hcC
    (List.mem_cons_of_mem _ hnd) (List.mem_cons_of_mem _ hsw)
    (List.mem_cons_of_mem _ hcache) (List.mem_cons_of_mem _ haw)
    (List.mem_cons_of_mem _ hnr) (List.mem_cons_of_mem _ hout)
    (List.mem_cons_self ..) hCP
    (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)) hOutB hOutF hRv
  exact htail.2.pre (fun t ht heq => by
    subst t
    exact ⟨hL1, Γ, q, he, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, hsc, hE⟩)

#print axioms stage_cap
end InitECandidate.Solver.MemSafe.CsrCost
