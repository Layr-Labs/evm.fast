import InitECandidate.Solver.MemSafe.Trie.CsrTop

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: the memory-safety summary

`sumSpecA_compute_state_root`: signature `[buf 32] -> []`, `Pre = True`, capabilities `capsX`
(the all-cells capabilities of the cache, `new_roots` table types and of the trie writer).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def csrSig : Sig := ⟨[.buf 32], [], [], true⟩

theorem capsOK_csr (sg : Sig) : capsOK Types.guestC sg capsX = true := by
  simp only [capsOK, capsX, HtabEntries.capsHT, insCaps, leafCaps, brCaps, anyG, List.all_cons, List.all_nil,
    List.cons_append, List.nil_append, List.append_assoc, List.all_append, Bool.and_true, beq_self_eq_true,
    Bool.true_or]
  decide

theorem capSub_csr1 : capSub insCaps capsX = true := by decide
theorem capSub_csr2 : capSub (HtabEntries.capsHT Types.tHTh20) capsX = true := by decide
theorem capSub_csr3 : capSub (HtabEntries.capsHT Types.tHTb20) capsX = true := by decide

set_option maxHeartbeats 0 in
theorem sumSpecA_compute_state_root :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "compute_state_root") csrSig
      (fun _ _ _ => True) (fun _ s Γ a => CapPW capsX s Γ a)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gpC (Rx := fun _ _ _ _ _ _ => True) hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_csr _) (by
      intro c hc
      simp only [capsX, HtabEntries.capsHT, insCaps, leafCaps, brCaps, List.cons_append, List.nil_append,
        List.append_assoc, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hc
      rcases hc with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl) ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 _ ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_csr hl
  obtain ⟨v0, rfl⟩ : ∃ v0, vs = [v0] := by
    match vs, hlen with
    | [v0], _ => exact ⟨v0, rfl⟩
  obtain ⟨hb0, hsh0⟩ := hbind 0 (by decide) (by simp)
  obtain ⟨OUT, rfl⟩ := val_of_shapeEq_one hsh0
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) csrSig capsX [.val (.word OUT)] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hCb : a.Cb = Types.guestC := rfl
  have haH : a.H = Hooks.guestHooksR (σ := σ) := rfl
  have hgr : a.sg.grows = true := rfl
  have hcI : capSub insCaps a.caps = true := capSub_csr1
  have hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true := capSub_csr2
  have hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true := capSub_csr3
  -- the output buffer, from the entry arguments
  have hbuf0 : BufOK a.C Γ0 p0 OUT.toNat 32 := by
    obtain ⟨-, hv⟩ := ha.hargs0
    obtain ⟨w, hw, hb⟩ := hv 0 (.buf 32) (.val (.word OUT)) rfl rfl
    simp only [wordOf, Option.some.injEq] at hw
    subst hw
    exact hb
  have hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32 :=
    fun s Γ q hh => bufOK_ext ha.hord0 (heap_ord hh) hh.2.2.1 hh.2.2.2.1 hh.2.2.2.2.1 hbuf0
  have hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x := fun x hx =>
    Or.inr (Or.inl ⟨0, OUT, by simp [a, actOf, argW, wordOf], Or.inl ⟨32, rfl, hx⟩⟩)
  let Rv0 : Gam → Ptrs → Mem → ValueHOL 64 → Prop := fun Γ' p' mm v =>
    RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ True
  have hRv : ∀ Γ q mm, Rv0 Γ q mm (.val (.word (BitVec.ofNat 64 0))) :=
    fun Γ q mm => ⟨fun i r w hr => by simp [a, actOf, csrSig] at hr, trivial⟩
  have hkv0 : LV [(nm "out", ValueHOL.val (.word OUT))] s0.locals := by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    subst hp
    rw [hloc]
    exact hb0
  refine hoareG_conseq (P := GI a (LV [(nm "out", ValueHOL.val (.word OUT))]) (fun _ _ _ => True))
    (Q := GP a (fun _ => False) (fun _ _ _ => True) Rv0) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, trivial⟩
  · intro r t _ _ h
    exact gp_final h
  exact stage_cache0 ha haC hCb haH hgr hcI hcH hcC (List.mem_cons_self ..)
    (fun p hp => by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
      subst hp
      dsimp only
      decide)
    hOutB hOutF hRv

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.sumSpecA_compute_state_root
