import InitECandidate.Solver.MemSafe.CsrInnerCost.Loop
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
theorem inner_pass {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
 (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
 (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
 (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
 {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M VB INN : BitVec 64}
 (hFit : ∀ Γ, K Γ → Fits Γ (.ptr Types.tHTb32) INN)
 (hinn : (nm "inner", .val (.word INN)) ∈ B)
 (hvb : (nm "vbuf", .val (.word VB)) ∈ B) (hmpt : (nm "mpt", .val (.word M)) ∈ B)
 (hfr : ∀ p ∈ B, p.1 ≠ nm "pass" ∧ p.1 ≠ nm "j" ∧ p.1 ≠ nm "icount" ∧ p.1 ≠ nm "e" ∧ p.1 ≠ nm "v" ∧ p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc")
 {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
 CH σ (GI a (fun m => ∃ P : BitVec 64, Trie.LV ((nm "pass", .val (.word P)) :: B) m)
   (IA a K C NR SW AW ND M VB)) csr_j_1
   (GP a (fun m => ∃ P : BitVec 64, Trie.LV ((nm "pass", .val (.word P)) :: B) m)
    (IA a K C NR SW AW ND M VB) Rv) innerBound := by
 refine ⟨(cstage_pass ha haC hCb haH hgr hcI hK hinn hvb hmpt hfr).1,?_⟩
 unfold csr_j_1
 refine Inv.costP_dec ?_
 intro s hs ⟨⟨P,hL⟩,Γ,q,he,hh,hsc,hE⟩ v hv hsh
 rw [ev_cw] at hv
 cases hv
 let kvp : List (MlS × ValueHOL 64) := (nm "pass",.val (.word P)) :: B
 have hfreshJ : ∀ p ∈ kvp, p.1 ≠ nm "j" := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · dsimp only; decide
  · exact (hfr p hp).2.1
 have hL1 : Trie.LV ((nm "j",.val (.word (0 : BitVec 64))) :: kvp)
   (setVarHOLFinite (nm "j") (.val (.word (0 : BitVec 64))) s).locals :=
   Trie.lv_cons (Trie.lv_set hL hfreshJ _) (by simp [setVarHOLFinite,FUPDATE])
 unfold csr_icount_1
 refine Inv.costP_dec ?_
 intro t ht heq w hw hshape
 subst t
 have hev : ev (setVarHOLFinite (nm "j") (.val (.word (0 : BitVec 64))) s) (lv (nm "inner")) = some (.val (.word INN)) :=
   Trie.lv_ev hL1 (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hinn))
 have hword := HtabEntries.ld_w (ev_add2 hev (ev_cw _ 24)) hw
 subst hword
 let N : BitVec 64 := rd s.memory (INN + BitVec.ofNat 64 24)
 have hN : N.toNat ≤ capMax := by
  exact CsrCost.count_of_heap_fits haC haH hh (by decide) (hFit Γ hE.2.2.2.2.2)
 let kvI : List (MlS × ValueHOL 64) := (nm "icount",.val (.word N)) :: kvp
 have hfrI : ∀ p ∈ kvI, p.1 ≠ nm "j" ∧ p.1 ≠ nm "e" ∧ p.1 ≠ nm "v" ∧ p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc" := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · (repeat' apply And.intro) <;> (dsimp only; decide)
  · rcases List.mem_cons.mp hp with rfl | hp
    · (repeat' apply And.intro) <;> (dsimp only; decide)
    · obtain ⟨_,hj,_,he,hv,hz,hn,hw,henc⟩ := hfr p hp
      exact ⟨hj,he,hv,hz,hn,hw,henc⟩
 have hL2 : Trie.LV ((nm "icount",.val (.word N)) :: (nm "j",.val (.word (0 : BitVec 64))) :: kvp)
   (setVarHOLFinite (nm "icount") (.val (.word N)) (setVarHOLFinite (nm "j") (.val (.word (0 : BitVec 64))) s)).locals := by
  apply Trie.lv_cons
  · apply Trie.lv_set hL1
    intro p hp
    rcases List.mem_cons.mp hp with rfl | hp
    · dsimp only; decide
    · rcases List.mem_cons.mp hp with rfl | hp
      · dsimp only; decide
      · exact (hfr p hp).2.2.1
  · simp [setVarHOLFinite,FUPDATE]
 have hL2' : Trie.LV ((nm "j",.val (.word (0 : BitVec 64))) :: kvI)
   (setVarHOLFinite (nm "icount") (.val (.word N)) (setVarHOLFinite (nm "j") (.val (.word (0 : BitVec 64))) s)).locals :=
   Trie.lv_perm hL2 (fun p hp => by simp only [kvI,kvp,List.mem_cons] at hp ⊢; tauto)
 have hloop := inner_loop ha haC hCb haH hgr hcI hK
   (kv := kvI) (CP := N) (C := C) (NR := NR) (SW := SW) (AW := AW) (ND := ND)
   (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hinn))
   (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hvb))
   (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hmpt))
   (List.mem_cons_self ..) hN hfrI (Rv := Rv)
 have hsuffix := Inv.costP_seq (R := fun _ => True) hloop.2 (fun _ _ _ _ _ => trivial)
   (Inv.costP_of_cost (cost_assign (σ := σ) (X := guestCtx) VarKind.local (nm "pass") (.op .add [lv (nm "pass"),cw 1])))
 refine hsuffix.pre ?_
 intro u hu hueq
 subst u
 refine ⟨⟨⟨0,hL2'⟩,Γ,q,he,?_,hsc,hE⟩,0,?_,by decide⟩
 · exact heap_congr (s := s) ha.hH rfl rfl rfl rfl hh
 · exact hL2' _ (List.mem_cons_self ..)
#print axioms inner_pass
end InitECandidate.Solver.MemSafe.CsrInnerCost
