import InitECandidate.Solver.MemSafe.Trie.NodeHashG

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `mpt_root`: footprint
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- `Foot` with extra writable cells `Ex` (an output buffer). -/
def FootX (Nd : BitVec 64 → Prop) (Ex : BitVec 64 → Prop) (s t : State σ) (p : Ptrs) : Prop :=
  (∀ g, g ≠ gHeap → g ≠ gScratch → t.globals.lookup g = s.globals.lookup g) ∧
    ∃ q : Ptrs, ptrsOf t = some q ∧ q.Ordered ∧ p.Mono q ∧
      ∀ a, t.memory a ≠ s.memory a →
        (∃ b, Nd b ∧ CacheCell b a) ∨ KBuf s a ∨ ¬ p.Allocated a.toNat ∨ Ex a

theorem footX_of_foot {Nd : BitVec 64 → Prop} {Ex : BitVec 64 → Prop} {s t : State σ} {p : Ptrs}
    (h : Foot Nd s t p) : FootX Nd Ex s t p := by
  obtain ⟨hg, q, hq, hqo, hm, hw⟩ := h
  refine ⟨hg, q, hq, hqo, hm, fun a ha => ?_⟩
  rcases hw a ha with h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (Or.inl h))

theorem footX_ex {Nd : BitVec 64 → Prop} {Ex : BitVec 64 → Prop} {s t t' : State σ} {p : Ptrs}
    (h : FootX Nd Ex s t p) (hg : t'.globals = t.globals)
    (hm : ∀ a, t'.memory a ≠ t.memory a → Ex a) : FootX Nd Ex s t' p := by
  obtain ⟨hg1, q, hq, hqo, hmo, hw⟩ := h
  refine ⟨fun g h1 h2 => by rw [hg]; exact hg1 g h1 h2, q, by rw [ptrsOf_frame hg]; exact hq, hqo, hmo,
    fun a ha => ?_⟩
  by_cases e : t.memory a = s.memory a
  · have : t'.memory a ≠ t.memory a := by rw [e]; exact ha
    exact Or.inr (Or.inr (Or.inr (hm a this)))
  · exact hw a e

theorem fx_memcpy {Nd : BitVec 64 → Prop} {s0 s st : State σ} {p : Ptrs} {out : BitVec 64}
    {v1 : ValueHOL 64} {r : PanSemResultExact 64} (hout : out.toNat + 32 ≤ scratchEnd)
    (hF : FootX Nd (Overlap out.toNat 32) s0 s p)
    (hR : Good (some r) → BufPre 0 2 [.val (.word out), v1, .val (.word (BitVec.ofNat 64 32))] →
      st.globals = s.globals ∧
        ModifiesOnly (BufR 0 2 [.val (.word out), v1, .val (.word (BitVec.ofNat 64 32))])
          s.memory st.memory)
    (hg : Good (some r)) : FootX Nd (Overlap out.toNat 32) s0 st p := by
  have h32 : (BitVec.ofNat 64 32).toNat = 32 := by decide
  obtain ⟨hgl, hmod⟩ := hR hg ⟨out, BitVec.ofNat 64 32, rfl, rfl, Or.inr (by rw [h32]; exact hout)⟩
  refine footX_ex hF hgl (fun a ha => ?_)
  by_contra hn
  apply ha
  apply hmod
  rintro ⟨D, N, hD, hN, hov⟩
  simp only [argW, wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hD hN
  subst hD hN
  rw [h32] at hov
  exact hn hov

theorem mptRoot_main (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) {Nd : BitVec 64 → Prop} {m out : BitVec 64}
    {p : Ptrs} {s0 : State σ} (hp : ptrsOf s0 = some p) (hord : p.Ordered)
    (hout : out.toNat + 32 ≤ scratchEnd) (htr : TrieOK s0 Nd p.hp) (hL : LenStat Nd s0)
    (hroot : rd s0.memory (m + BitVec.ofNat 64 0) = 0 ∨ Nd (rd s0.memory (m + BitVec.ofNat 64 0)) ∨
      (rd s0.memory (m + BitVec.ofNat 64 0)).toNat < nullMax)
    (hm : s0.locals.lookup (nm "m") = some (.val (.word m)))
    (ho : s0.locals.lookup (nm "out") = some (.val (.word out))) :
    HoareG σ X (fun t => t = s0) Band2.mrBody
      (fun _ t => FootX Nd (Overlap out.toNat 32) s0 t p) := by
  unfold Band2.mrBody
  refine hoareG_dec fun s1 hs1 hP1 v1 hv1 hsh1 => ?_
  subst hP1
  obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' hv1
  rw [ev_add_cw hm 0] at hw
  cases hw
  set s2 := setVarHOLFinite (nm "root") (.val (.word (rd s1.memory (m + BitVec.ofNat 64 0)))) s1
    with hs2
  have ho2 : s2.locals.lookup (nm "out") = some (.val (.word out)) := by
    rw [hs2, lk_set_ne _ _ (by decide)]; exact ho
  have hr2 : s2.locals.lookup (nm "root") =
      some (.val (.word (rd s1.memory (m + BitVec.ofNat 64 0)))) := lk_set_self _ _ _
  have hF0 : FootX Nd (Overlap out.toNat 32) s1 s2 p := footX_of_foot (foot_of_clean hp hord rfl rfl)
  refine hoareG_seqRQ (S := fun t => t = s2 ∧ rd s1.memory (m + BitVec.ofNat 64 0) ≠ 0) ?_ ?_
  · refine hoareG_ite ?_ ?_
    swap
    · refine hoareG_skip fun s _ ⟨hP, hc⟩ => rq_none ⟨hP, ?_⟩
      subst hP
      exact Spec.equal_false (cmp_val_false hc (ev_lw hr2) (ev_cw _ 0))
    · refine hoareG_seqPQ' (S := fun t => FootX Nd (Overlap out.toNat 32) s1 t p)
        (E := fun t => FootX Nd (Overlap out.toNat 32) s1 t p) ?_ ?_ (fun r t hab h => rq_some h)
      · refine hoareG_callDP (foot_memcpy hC hA) ?_ ?_
        · intro s' hs' hP' vs hvs callee v st hR hst
          obtain ⟨hPs, -⟩ := hP'
          subst hPs
          obtain ⟨va, vb, vc, rfl, ea, eb, ec⟩ := evs_three_inv' hvs
          rw [ev_lw ho2] at ea
          rw [ev_cw] at ec
          cases ea; cases ec
          exact fx_memcpy hout hF0 hR (by simp [Good])
        · intro s' hs' hP' vs hvs callee r st hR hst habn
          obtain ⟨hPs, -⟩ := hP'
          subst hPs
          obtain ⟨va, vb, vc, rfl, ea, eb, ec⟩ := evs_three_inv' hvs
          rw [ev_lw ho2] at ea
          rw [ev_cw] at ec
          cases ea; cases ec
          exact fx_memcpy hout hF0 hR (abn_good habn)
      · exact hoareG_return fun s _ hS v hv => rq_some hS
  · refine hoareG_decCall (nodeHashG hC hA hT hNS hX0) ?_ ?_
    swap
    · intro s' hs' hP' vs hvs callee r st hR hst habn
      obtain ⟨hPs, hrne⟩ := hP'
      subst hPs
      rw [evs_cons (ev_lw hr2) evs_nil] at hvs
      simp only [Option.some.injEq] at hvs
      subst hvs
      have hNdr := hroot.resolve_left hrne
      exact footX_of_foot (hR (abn_good habn) _ p Nd rfl hp hord htr hNdr hL)
    intro s' hs' hP' vs hvs callee v st hR hst hsh
    obtain ⟨hPs, hrne⟩ := hP'
    subst hPs
    rw [evs_cons (ev_lw hr2) evs_nil] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have hNdr := hroot.resolve_left hrne
    have hF1 : FootX Nd (Overlap out.toNat 32) s1 st p :=
      footX_of_foot (hR (by simp [Good]) _ p Nd rfl hp hord htr hNdr hL)
    obtain ⟨hh, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoareG_seqPQ' (S := fun t => FootX Nd (Overlap out.toNat 32) s1 t p)
      (E := fun t => FootX Nd (Overlap out.toNat 32) s1 t p) ?_ ?_ (fun r t hab h => h)
    · refine hoareG_callDP (foot_memcpy hC hA) ?_ ?_
      · intro s'' hs'' hP'' vs'' hvs'' callee'' v'' st'' hR'' hst''
        subst hP''
        obtain ⟨va, vb, vc, rfl, ea, eb, ec⟩ := evs_three_inv' hvs''
        rw [ev_lw (by rw [lk_set_ne _ _ (by decide)]; exact ho2)] at ea
        rw [ev_cw] at ec
        cases ea; cases ec
        exact fx_memcpy hout hF1 hR'' (by simp [Good])
      · intro s'' hs'' hP'' vs'' hvs'' callee'' r'' st'' hR'' hst'' habn
        subst hP''
        obtain ⟨va, vb, vc, rfl, ea, eb, ec⟩ := evs_three_inv' hvs''
        rw [ev_lw (by rw [lk_set_ne _ _ (by decide)]; exact ho2)] at ea
        rw [ev_cw] at ec
        cases ea; cases ec
        exact fx_memcpy hout hF1 hR'' (abn_good habn)
    · exact hoareG_return fun s _ hS v hv => hS

/-- **`mpt_root` (exception-inclusive footprint).** -/
theorem mptRootG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) :
    FunSpec σ X (nm "mpt_root") (fun vs s r t => Good (some r) →
      ∀ (m out : BitVec 64) (p : Ptrs) (Nd : BitVec 64 → Prop),
        vs = [.val (.word m), .val (.word out)] →
        ptrsOf s = some p → p.Ordered → out.toNat + 32 ≤ scratchEnd → TrieOK s Nd p.hp →
        LenStat Nd s → (rd s.memory m = 0 ∨ Nd (rd s.memory m) ∨ (rd s.memory m).toNat < nullMax) →
        FootX Nd (Overlap out.toNat 32) s t p) := by
  refine funSpecG_of_hoareG (R := fun vs s r t => ∀ (m out : BitVec 64) (p : Ptrs)
      (Nd : BitVec 64 → Prop), vs = [.val (.word m), .val (.word out)] →
        ptrsOf s = some p → p.Ordered → out.toNat + 32 ≤ scratchEnd → TrieOK s Nd p.hp →
        LenStat Nd s → (rd s.memory m = 0 ∨ Nd (rd s.memory m) ∨ (rd s.memory m).toNat < nullMax) →
        FootX Nd (Overlap out.toNat 32) s t p) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA0, hB0⟩ := lookupCode_two Band2.code_mr (by decide) hl
  intro t ht hP hg r' hr' m out p Nd hvs hp hord hout htr hL hroot
  obtain rfl := hP
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hm : t.locals.lookup (nm "m") = some (.val (.word m)) := by rw [hloc]; exact hA0
  have ho : t.locals.lookup (nm "out") = some (.val (.word out)) := by rw [hloc]; exact hB0
  have hroot' : rd t.memory (m + BitVec.ofNat 64 0) = 0 ∨ Nd (rd t.memory (m + BitVec.ofNat 64 0)) ∨
      (rd t.memory (m + BitVec.ofNat 64 0)).toNat < nullMax := by
    have : m + BitVec.ofNat 64 0 = m := by simp
    rw [this]; exact hroot
  exact mptRoot_main hC hA hT hNS hX0 hp hord hout htr hL hroot' hm ho t ht rfl hg

end InitECandidate.Solver.MemSafe.Trie
