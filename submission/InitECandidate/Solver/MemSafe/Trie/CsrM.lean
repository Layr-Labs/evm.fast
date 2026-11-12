import InitECandidate.Solver.MemSafe.Trie.CsrSW

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: a `mpt_set` statement under an arbitrary invariant `E`

`mps_stmt`: `mpt_set(mpt, key, klen, vp, vl);` where the invariant `E` gives the handle `M` (`HRecU`), the value slice
(`VInR`), and is preserved by the call from its post-condition (`hpres`).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type}

theorem mps_stmt {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    {args : List (ExpHOL 64)} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {M K KL VP VL : BitVec 64}
    (hev : ∀ s : State σ, L s.locals → evs s args =
      some [.val (.word M), .val (.word K), .val (.word KL), .val (.word VP), .val (.word VL)])
    (hKL : 2 * KL.toNat < 2 ^ 64)
    (hHR : ∀ Γ q mm, E Γ q mm → HRecU a.p0 Γ q mm M)
    (hVin : ∀ Γ q mm, E Γ q mm → Hooks.VInR Types.tVAL Γ VP VL)
    (hpres : ∀ (s st : State σ) (Γ Γ' : Gam) (q q' : Ptrs),
      Ext Γ Γ' → Heap a Γ q s → Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' →
      Mod a mpsSig insCaps [.val (.word M), .val (.word K), .val (.word KL), .val (.word VP), .val (.word VL)]
        Γ q s st → E Γ q s.memory → HRec Γ' q' st.memory M →
      E Γ' q' st.memory)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a L E) (.call (some (none, none)) (nm "mpt_set") args) (GP a L E Rv) := by
  have hms : SumSpecA σ guestCtx a.Cb a.H (nm "mpt_set") mpsSig MpsPre
      (fun _ s Γ x => CapPW insCaps s Γ x)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ M, argW vs 0 = some M ∧ HRec Γ' p' t.memory M) := by
    rw [hCb, haH]; exact sumSpecA_mpt_set
  refine gp_callX ha (cs := insCaps) hcI hms (funSpec_true _) (by simp [mpsSig]) (fun _ => hgr) ?_ ?_
  · intro s Γ q hs hL hh hE vs hvs
    rw [hev s hL] at hvs
    cases hvs
    have hHR' := hHR Γ q s.memory hE
    refine ⟨argsOK_mps (bufok_hrec hHR'.1), fun x hx => ?_, fun callee => ?_⟩
    · exact Or.inr (Or.inr (Or.inl (hHR'.2 x (argCells_mps hx))))
    · exact ⟨M, K, KL, VP, VL, rfl, mrecF_of_hRec hh.2.1 hHR'.1, hKL, hVin Γ q s.memory hE⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    rw [hev s hL] at hvs
    cases hvs
    refine ⟨hQ.1, fun ⟨v, hv⟩ => ?_⟩
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hh.2.1
    obtain ⟨M', hM', hHR'⟩ := hQ.2 v hv q q' hq0 hh'.2.1
    simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hM'
    subst hM'
    exact hpres s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE hHR'

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.mps_stmt
