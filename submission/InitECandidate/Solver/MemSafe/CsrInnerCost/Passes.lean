import InitECandidate.Solver.MemSafe.CsrInnerCost.Root

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.CsrInnerCost
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}
def cellCb : ProgHOL 64 → Nat
 | .decCall _ _ f _ k => 1 + tb f + cellCb k
 | .call _ f _ => 1 + tb f + 0
 | .dec _ _ _ k => cellCb k
 | .seq a b => cellCb a + cellCb b
 | .ite _ a b => max (cellCb a) (cellCb b)
 | .while (.cmp .less (.var .local _) (.const c)) b => (c.toNat+1)*(cellCb b+1)
 | .while (.cmp .less (.var .local x) (.var .local y)) b =>
    (if x = nm "j" ∧ y = nm "icount" then capMax+1 else 2^64+1)*(cellCb b+1)
 | .while _ b => (2^64+1)*(cellCb b+1)
 | _ => 0


set_option maxHeartbeats 0 in
theorem cell_passes {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M VB INN ADDR : BitVec 64}
    (hinn : (nm "inner", ValueHOL.val (.word INN)) ∈ B)
    (hvb : (nm "vbuf", ValueHOL.val (.word VB)) ∈ B) (hmpt : (nm "mpt", ValueHOL.val (.word M)) ∈ B)
    (haddr : (nm "addr", ValueHOL.val (.word ADDR)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hfr : ∀ p ∈ B, p.1 ≠ nm "pass" ∧ p.1 ≠ nm "j" ∧ p.1 ≠ nm "icount" ∧ p.1 ≠ nm "e" ∧ p.1 ≠ nm "v" ∧
      p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc" ∧ p.1 ≠ nm "root")
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (Trie.LV B) (IA a (KCell SW ADDR INN) C NR SW AW ND M VB)) csr_pass_1
      (GP a (Trie.LV B) (IA a (KCell SW ADDR INN) C NR SW AW ND M VB) Rv) (cellCb csr_pass_1) := by
  have hK := cell_stable SW ADDR INN
  unfold csr_pass_1
  refine gc_dec ha.hH (L1 := Trie.LV ((nm "pass", ValueHOL.val (.word (BitVec.ofNat 64 0))) :: B))
    (L2 := fun m => ∃ P : BitVec 64, Trie.LV ((nm "pass", ValueHOL.val (.word P)) :: B) m) ?_ ?_
    (fun m0 m _ ⟨P, h⟩ => Trie.lv_res (Trie.lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => (hfr p hp).1) _)
  · intro s hs hL v hv
    rw [ev_cw] at hv
    cases hv
    exact Trie.lv_cons (Trie.lv_set hL (fun p hp => (hfr p hp).1) _) (by simp [setVarHOLFinite, FUPDATE])
  · refine gc_seq (L := fun m => ∃ P : BitVec 64, Trie.LV ((nm "pass", ValueHOL.val (.word P)) :: B) m)
      (E := IA a (KCell SW ADDR INN) C NR SW AW ND M VB) ?_ ?_
    · refine ch_pre (P := fun s => GI a (fun m => ∃ P : BitVec 64, Trie.LV ((nm "pass", ValueHOL.val (.word P)) :: B) m)
        (IA a (KCell SW ADDR INN) C NR SW AW ND M VB) s ∧ ∃ w : BitVec 64,
          s.locals.lookup (nm "pass") = some (.val (.word w)) ∧ w.toNat ≤ (BitVec.ofNat 64 2).toNat) (gc_while_const ha.hH (i := nm "pass") (c := BitVec.ofNat 64 2) (by decide) ?_ (fun s _ h _ => h) (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "pass") true _ (by decide_cbv)))
        (fun s _ ⟨hL, rest⟩ => ⟨⟨⟨_, hL⟩, rest⟩, BitVec.ofNat 64 0, hL _ (List.mem_cons_self ..), by decide⟩)
      refine ch_pre (inner_pass ha haC hCb haH hgr hcI hK (fun Γ h => h.2) hinn hvb hmpt (fun p hp => ⟨(hfr p hp).1,
        (hfr p hp).2.1, (hfr p hp).2.2.1, (hfr p hp).2.2.2.1, (hfr p hp).2.2.2.2.1, (hfr p hp).2.2.2.2.2.1,
        (hfr p hp).2.2.2.2.2.2.1, (hfr p hp).2.2.2.2.2.2.2.1, (hfr p hp).2.2.2.2.2.2.2.2.1⟩))
        (fun s _ h => h.1)
    · refine ch_exL fun P => ?_
      let kvp : List (MlS × ValueHOL 64) := (nm "pass", ValueHOL.val (.word P)) :: B
      refine ch_weakL (L := Trie.LV kvp) (fun m hm => ⟨P, hm⟩) ?_
      exact cell_root ha haC hCb haH hgr hcH (List.mem_cons_of_mem _ hmpt) (List.mem_cons_of_mem _ haddr)
        (List.mem_cons_of_mem _ hnr) (fun p hp => by
          rcases List.mem_cons.mp hp with rfl | hp
          · dsimp only; decide
          · exact (hfr p hp).2.2.2.2.2.2.2.2.2)


end InitECandidate.Solver.MemSafe.CsrInnerCost

#print axioms InitECandidate.Solver.MemSafe.CsrInnerCost.cell_passes
