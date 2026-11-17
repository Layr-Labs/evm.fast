import InitECandidate.Solver.MemSafe.CsrStateCost.Root
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
def acapBound : Nat := (capMax+1)*(cb csr_s3_1+1)+(1+tb (nm "mpt_root")+0+0)
theorem acap {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = guestC)
 (hCb : a.Cb = guestC) (haH : a.H = guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
 (hcI : capSub insCaps a.caps = true)
 {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M OUT : BitVec 64}
 (haw : (nm "aw", .val (.word AW)) ∈ B) (hstate : (nm "state_mpt", .val (.word M)) ∈ B)
 (hout : (nm "out", .val (.word OUT)) ∈ B)
 (hfr : ∀ p ∈ B, ∀ w ∈ nm "acap" :: nm "i" :: nsC, p.1 ≠ w)
 (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
 (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
 {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
 (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
 CH σ (GI a (fun m => ∃ I : BitVec 64, Trie.LV ((nm "i", .val (.word I)) :: B) m)
   (IM a (fun _ => True) C NR SW AW ND M)) csr_acap_1
  (GP a (fun _ => False) (fun _ _ _ => True) Rv) acapBound := by
 refine ⟨(cstage_acap ha haC hCb haH hgr hcI haw hstate hout hfr hOutB hOutF hRv).1,?_⟩
 unfold csr_acap_1
 refine Inv.costP_dec ?_
 intro s hs ⟨⟨I,hL⟩,Γ,q,he,hh,hsc,hE⟩ v hv hsh
 have hev := Trie.lv_ev hL (List.mem_cons_of_mem _ haw)
 have hv' := HtabEntries.ld_w (ev_add2 hev (ev_cw s 24)) hv
 subst hv'
 let N : BitVec 64 := rd s.memory (AW + BitVec.ofNat 64 24)
 have hN : N.toNat ≤ capMax := CsrCost.count_of_heap_fits haC haH hh (by decide) hE.1.2.2.2
 let B1 : List (MlS × ValueHOL 64) := (nm "acap", .val (.word N)) :: B
 have hfr1 : ∀ p ∈ B1, ∀ w ∈ nm "i" :: nsC, p.1 ≠ w := Trie.fresh_cons
   (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)
 have hfreshA : ∀ p ∈ ((nm "i",.val (.word I)) :: B), p.1 ≠ nm "acap" := by
   intro p hp
   rcases List.mem_cons.mp hp with rfl | hp
   · dsimp only; decide
   · exact hfr p hp _ (List.mem_cons_self ..)
 have htmp : Trie.LV ((nm "acap",.val (.word N)) :: (nm "i",.val (.word I)) :: B)
   (setVarHOLFinite (nm "acap") (.val (.word N)) s).locals :=
   Trie.lv_cons (Trie.lv_set hL hfreshA _) (by simp [setVarHOLFinite,FUPDATE])
 have hL1 : Trie.LV ((nm "i", .val (.word I)) :: B1)
   (setVarHOLFinite (nm "acap") (.val (.word N)) s).locals :=
   Trie.lv_perm htmp (fun p hp => by simp only [B1,List.mem_cons] at hp ⊢; tauto)
 have hw := loopC ha haC hCb haH hgr hcI (B := B1) (CP := N) (C := C) (NR := NR)
   (SW := SW) (AW := AW) (ND := ND) (List.mem_cons_self ..) hN (List.mem_cons_of_mem _ hstate) hfr1 (Rv := Rv)
 -- The root suffix needs the loop's existential counter, independent of its final value.
 have ht' : Inv.CostP σ guestCtx (GI a (fun m => ∃ J : BitVec 64, Trie.LV ((nm "i",.val (.word J)) :: B1) m)
   (IM a (fun _ => True) C NR SW AW ND M)) rootTail (1+tb (nm "mpt_root")+0+0) := by
   intro t ht hp
   obtain ⟨⟨J,hJ⟩,rest⟩ := hp
   exact (root_tail ha haC hCb haH (B := (nm "i",.val (.word J)) :: B1)
     (C := C) (NR := NR) (SW := SW) (AW := AW) (ND := ND)
     (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hstate))
     (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hout)) hOutB hOutF hRv).2 t ht ⟨hJ,rest⟩
 have hseq := Inv.costP_seq hw.2 (fun t ht hp hg hr => (Frames.hoare_of_hoareG hw.1 t ht hp hg).1 hr) ht'
 refine (Inv.costP_seq (Ba := 0) (Bb := acapBound) (Inv.costP_of_cost (cost_assign (σ := σ) (X := guestCtx) Flapjack.VarKind.local (nm "i") (cw 0))) (hoare_assign ?_) hseq).mono (by omega)
 intro t ht heq v hv hvalid hr
 subst t
 rw [ev_cw] at hv
 cases hv
 have hB1 : Trie.LV B1 (setVarHOLFinite (nm "acap") (.val (.word N)) s).locals :=
   Trie.lv_mono hL1 (fun p hp => List.mem_cons_of_mem _ hp)
 have hL0 : Trie.LV ((nm "i",.val (.word (0 : BitVec 64))) :: B1)
   (setVarHOLFinite (nm "i") (.val (.word (0 : BitVec 64))) (setVarHOLFinite (nm "acap") (.val (.word N)) s)).locals :=
   Trie.lv_cons (Trie.lv_set hB1 (fun p hp => hfr1 p hp _ (List.mem_cons_self ..)) _) (by simp [setVarHOLFinite,FUPDATE])
 exact ⟨⟨⟨0,hL0⟩,Γ,q,he,heap_congr (s := s) ha.hH rfl rfl rfl rfl hh,hsc,hE⟩,
   0,hL0 _ (List.mem_cons_self ..),by decide⟩
#print axioms acap
end InitECandidate.Solver.MemSafe.CsrStateCost
