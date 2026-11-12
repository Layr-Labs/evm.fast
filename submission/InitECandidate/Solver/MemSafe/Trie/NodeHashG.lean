import InitECandidate.Solver.MemSafe.Trie.NodeRlpG

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `node_hash`: footprint
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- Extend a foot by one more step that writes cache cells, keccak cells or fresh heap above `p.hp`. -/
theorem foot_step {Nd : BitVec 64 → Prop} {s t t' : State σ} {p q' : Ptrs} (hps : ptrsOf s = some p)
    (ho : p.Ordered) (hF : Foot Nd s t p) (hq' : ptrsOf t' = some q') (hqo : q'.Ordered)
    (hmono : ∀ q, ptrsOf t = some q → q.Mono q')
    (hg : ∀ g, g ≠ gHeap → g ≠ gScratch → t'.globals.lookup g = t.globals.lookup g)
    (hmem : ∀ a, t'.memory a ≠ t.memory a → (∃ b, Nd b ∧ CacheCell b a) ∨ KBuf t a ∨
      (p.hp ≤ a.toNat ∧ a.toNat < heapEnd)) : Foot Nd s t' p := by
  obtain ⟨hg1, q, hq, hqo1, hm1, hw1⟩ := hF
  have hgs : ∀ g, g ≠ gHeap → g ≠ gScratch → t'.globals.lookup g = s.globals.lookup g :=
    fun g h1 h2 => (hg g h1 h2).trans (hg1 g h1 h2)
  have hfp : q'.fp = p.fp := fp_eq_of_glob hps hq' (hgs gFrame (by decide) (by decide))
  have hk1 : gword t gKst = gword s gKst := by unfold gword; rw [hg1 _ (by decide) (by decide)]
  have hk2 : gword t gKpad = gword s gKpad := by unfold gword; rw [hg1 _ (by decide) (by decide)]
  have hmo := hmono q hq
  refine ⟨hgs, q', hq', hqo, ⟨le_trans hm1.1 hmo.1, le_trans hm1.2.1 hmo.2.1, le_trans hmo.2.2 hm1.2.2⟩,
    fun a ha => ?_⟩
  by_cases e : t.memory a = s.memory a
  · have : t'.memory a ≠ t.memory a := by rw [e]; exact ha
    rcases hmem a this with h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl ((kbuf_congr hk1 hk2 a).mp h))
    · exact Or.inr (Or.inr (unalloc_of_fresh ho hqo hfp (Or.inl h)))
  · exact hw1 a e

theorem foot_same {Nd : BitVec 64 → Prop} {s t t' : State σ} {p : Ptrs} (hps : ptrsOf s = some p)
    (ho : p.Ordered) (hF : Foot Nd s t p) (hg : t'.globals = t.globals)
    (hmem : ∀ a, t'.memory a ≠ t.memory a → (∃ b, Nd b ∧ CacheCell b a) ∨ KBuf t a ∨
      (p.hp ≤ a.toNat ∧ a.toNat < heapEnd)) : Foot Nd s t' p := by
  obtain ⟨-, q, hq, hqo, -, -⟩ := id hF
  exact foot_step hps ho hF (q' := q) (by rw [ptrsOf_frame hg]; exact hq) hqo
    (fun q0 hq0 => by rw [hq] at hq0; cases hq0; exact mono_refl q) (fun g _ _ => by rw [hg]) hmem

theorem ev_rfield_hh {s : State σ} {x : MlS} {vs : List (ValueHOL 64)} {i : Nat} {w : BitVec 64}
    (h : s.locals.lookup x = some (.rStruct vs)) (hi : vs[i]? = some (.val (.word w))) :
    ev s (.rfield i (lv x)) = some (.val (.word w)) := by
  rw [ev_rfield (by rw [ev_lv]; exact h)]; exact hi

theorem kok_of_trie {Nd : BitVec 64 → Prop} {s : State σ} {HP : Nat} (htr : TrieOK s Nd HP)
    (hHP : HP ≤ heapEnd) : ∃ ks kp : BitVec 64, KOK s ks kp := by
  obtain ⟨-, -, ⟨ks, kp, h1, h2, h3, h4, h5, h6, h7, h8, -⟩, -⟩ := htr
  have := heapEnd_lt'
  exact ⟨ks, kp, h1, h2, h3, h4, by omega, by omega⟩

theorem kok_congr {s t : State σ} {ks kp : BitVec 64} (h : KOK s ks kp)
    (hk1 : gword t gKst = gword s gKst) (hk2 : gword t gKpad = gword s gKpad) : KOK t ks kp := by
  obtain ⟨a1, a2, a3, a4, a5, a6⟩ := h
  exact ⟨by rw [hk1]; exact a1, by rw [hk2]; exact a2, a3, a4, a5, a6⟩

set_option maxHeartbeats 4000000 in
theorem nodeHash_main (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) {Nd : BitVec 64 → Prop} {node : BitVec 64}
    {p : Ptrs} {s0 : State σ} (hp : ptrsOf s0 = some p) (hord : p.Ordered)
    (htr : TrieOK s0 Nd p.hp) (hNd0 : Nd node ∨ node.toNat < nullMax) (hL : LenStat Nd s0)
    (hnode : s0.locals.lookup (nm "node") = some (.val (.word node))) :
    HoareG σ X (fun t => t = s0) Band2.nhBody (fun _ t => Foot Nd s0 t p) := by
  have hkec : FunSpec σ X (nm "keccak256") (fun _ _ r _ => ¬ Abn r) :=
    Rec.noAbn_of_ef (Rec.ef_of_table hC hX0 (by decide_cbv))
  have hhp := hord.2.1
  obtain ⟨ks, kp, hK0⟩ := kok_of_trie htr hhp
  unfold Band2.nhBody
  refine hoareG_dec fun s1 hs1 hP1 v1 hv1 hsh1 => ?_
  subst hP1
  obtain ⟨w, hw, hmem, rfl⟩ := ev_load1_inv' hv1
  have hNd : Nd node := nd_of_load hNS hs1 hnode hw hmem (by decide) hNd0
  set s2 := setVarHOLFinite (nm "cached") (.val (.word (rd s1.memory w))) s1 with hs2
  have hn2 : s2.locals.lookup (nm "node") = some (.val (.word node)) := by
    rw [hs2, lk_set_ne _ _ (by decide)]; exact hnode
  refine hoareG_iteRet (P := fun t => t = s2) ?_ ?_
  · intro t ht hP w' hw' hw0 v hv
    subst hP
    exact foot_of_clean hp hord rfl rfl
  refine hoareG_decCall (nodeRlpG hC hA hT hNS hX0) ?_ ?_
  swap
  · intro s hs hP vs hvs callee r st hR hst habn
    obtain ⟨hPs, -⟩ := hP
    subst hPs
    rw [evs_cons (ev_lw hn2) evs_nil] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    exact (hR (abn_good habn) node p Nd rfl hp hord htr (Or.inl hNd) hL).1
  intro s hs hP vs hvs callee v st hR hst hsh
  obtain ⟨hPs, -⟩ := hP
  subst hPs
  rw [evs_cons (ev_lw hn2) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hfoot, hret⟩ := hR (by simp [Good]) node p Nd rfl hp hord htr (Or.inl hNd) hL
  obtain ⟨a, b, rfl⟩ := hret v rfl
  have hfoot' : Foot Nd s1 st p := hfoot
  obtain ⟨hg1, q, hq, hqo, hm1, hw1⟩ := hfoot
  set sR := setVarHOLFinite (nm "r") (.rStruct [.val (.word a), .val (.word b)])
    { st with locals := s2.locals } with hsR
  have hq' : ptrsOf sR = some q := hq
  refine hoareG_decCall ((allocSpec_alloc hC).and (funSpec_be _)) ?_ ?_
  swap
  · intro s' hs' hP' vs' hvs' callee' r' st' ⟨hA', hbeA⟩ hst' habn
    subst hP'
    rw [evs_cons (ev_cw _ 32) evs_nil] at hvs'
    simp only [Option.some.injEq] at hvs'
    subst hvs'
    obtain ⟨hmA, hgA, p', hp', hord', hmono, -⟩ := hA' (abn_good habn) _ q rfl hq' hqo
    exact foot_step hp hord hfoot' hp' hord' (fun q0 hq0 => by rw [hq] at hq0; cases hq0; exact hmono)
      (fun g h1 h2 => hgA g h1) (fun a ha => absurd (congrFun hmA a) ha)
  intro s' hs' hP' vs' hvs' callee' v' st' ⟨hA', hbeA⟩ hst' hsh'
  subst hP'
  rw [evs_cons (ev_cw _ 32) evs_nil] at hvs'
  simp only [Option.some.injEq] at hvs'
  subst hvs'
  obtain ⟨hmA, hgA, p', hp', hord', hmono, hqq⟩ := hA' (by simp [Good]) _ q rfl hq' hqo
  obtain ⟨h0, rfl, h8, hlive, hfree⟩ := hqq _ rfl
  have h32 : (BitVec.ofNat 64 32).toNat = 32 := by decide
  rw [h32] at hlive hfree
  have hlive' : heapBase ≤ h0.toNat ∧ h0.toNat + 32 ≤ p'.hp := hlive
  have hq0hp : q.hp ≤ h0.toNat := by
    by_contra hlt
    exact hfree h0.toNat le_rfl (by omega) (Or.inl ⟨hlive'.1, by omega⟩)
  set sA := setVarHOLFinite (nm "h") (.val (.word h0)) { st' with locals := sR.locals } with hsA
  have hpA : ptrsOf sA = some p' := hp'
  have hFA : Foot Nd s1 sA p :=
    foot_step hp hord hfoot' hp' hord' (fun q0 hq0 => by rw [hq] at hq0; cases hq0; exact hmono)
      (fun g h1 h2 => hgA g h1) (fun a ha => absurd (congrFun hmA a) ha)
  have hrA : sA.locals.lookup (nm "r") = some (.rStruct [.val (.word a), .val (.word b)]) := by
    rw [hsA, lk_set_ne _ _ (by decide)]
    show sR.locals.lookup (nm "r") = _
    rw [hsR, lk_set_self]
  have hhA : sA.locals.lookup (nm "h") = some (.val (.word h0)) := lk_set_self _ _ _
  have hnA : sA.locals.lookup (nm "node") = some (.val (.word node)) := by
    rw [hsA, lk_set_ne _ _ (by decide)]
    show sR.locals.lookup (nm "node") = _
    rw [hsR, lk_set_ne _ _ (by decide)]
    exact hn2
  have hgsA : ∀ g, g ≠ gHeap → g ≠ gScratch → sA.globals.lookup g = s1.globals.lookup g :=
    fun g h1 h2 => (hgA g h1).trans (hg1 g h1 h2)
  have hKA : KOK sA ks kp := kok_congr hK0 (gword_glob (hgsA _ (by decide) (by decide)))
    (gword_glob (hgsA _ (by decide) (by decide)))
  have hm11 := hm1.1
  have hE32 : h0.toNat + 32 ≤ heapEnd := by have := hord'.2.1; have := hlive'.2; omega
  have hE64 := heapEnd_lt'
  refine hoareG_seqPQ (S := fun t => Foot Nd s1 t p ∧ t.locals = sA.locals)
    (E := fun t => Foot Nd s1 t p) ?_ ?_ (fun r t h => h)
  · refine hoareG_callDP ((hkec).and (ret_keccak256 hC hA hT)) ?_ ?_
    · intro s'' hs'' hP'' vs'' hvs'' callee'' v'' st'' ⟨hna, hRK⟩ hst''
      subst hP''
      rw [evs_cons (ev_rfield_hh hrA (i := 0) (w := a) rfl) (evs_cons (ev_rfield_hh hrA (i := 1) (w := b) rfl) (evs_cons (ev_lw hhA) evs_nil))]
        at hvs''
      simp only [Option.some.injEq] at hvs''
      subst hvs''
      have hBW := hRK v'' rfl a b h0 ks kp rfl hKA (by omega)
      refine ⟨foot_same hp hord hFA hBW.1 ?_, rfl⟩
      intro a ha
      have hR : KIn ks kp a ∨ Overlap h0.toNat 32 a := by
        by_contra hn
        exact ha (hBW.2 a hn)
      rcases hR with hk | ho
      · exact Or.inr (Or.inl (kIn_kbuf hKA hk))
      · have := ovl_in h8 ho
        exact Or.inr (Or.inr ⟨by omega, by omega⟩)
    · intro s2x hs2x hP2x vs2x hvs2x callee2x r2x st2x ⟨hna, hRK⟩ hst2x habn
      exact absurd habn hna
  · refine hoareG_seqPQ (S := fun t => Foot Nd s1 t p ∧ t.locals = sA.locals)
      (E := fun t => Foot Nd s1 t p) ?_ ?_ (fun r t h => h)
    · refine hoareG_store fun s3 _ hS3 w3 v3 mem hw3 hv3 hmem => ?_
      obtain ⟨hF3, hl3⟩ := hS3
      have hn3 : s3.locals.lookup (nm "node") = some (.val (.word node)) := by rw [hl3]; exact hnA
      have hh3 : s3.locals.lookup (nm "h") = some (.val (.word h0)) := by rw [hl3]; exact hhA
      rw [ev_add_cw hn3 24] at hw3
      cases hw3
      rw [ev_lw hh3] at hv3
      cases hv3
      obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
      refine pg_none ⟨foot_same hp hord hF3 (t' := { s3 with memory := Spec.Inv.upd s3.memory _ h0 })
        rfl ?_, hl3⟩
      intro a ha
      by_cases hae : a = node + BitVec.ofNat 64 24
      · exact Or.inl ⟨node, hNd, Or.inr (Or.inr hae)⟩
      · exact absurd (by show Spec.Inv.upd s3.memory _ h0 a = s3.memory a; unfold Spec.Inv.upd; rw [if_neg hae]) ha
    · exact hoareG_return fun s _ hS v hv => hS.1

/-- **`node_hash` (exception-inclusive footprint).** -/
theorem nodeHashG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) :
    FunSpec σ X (nm "node_hash") (fun vs s r t => Good (some r) →
      ∀ (node : BitVec 64) (p : Ptrs) (Nd : BitVec 64 → Prop), vs = [.val (.word node)] →
        ptrsOf s = some p → p.Ordered → TrieOK s Nd p.hp → (Nd node ∨ node.toNat < nullMax) →
        LenStat Nd s → Foot Nd s t p) := by
  refine funSpecG_of_hoareG (R := fun vs s r t => ∀ (node : BitVec 64) (p : Ptrs)
      (Nd : BitVec 64 → Prop), vs = [.val (.word node)] →
        ptrsOf s = some p → p.Ordered → TrieOK s Nd p.hp → (Nd node ∨ node.toNat < nullMax) →
        LenStat Nd s → Foot Nd s t p) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hA0⟩ := lookupCode_one Band2.code_nh hl
  intro t ht hP hg r' hr' node p Nd hvs hp hord htr hNd hL
  obtain rfl := hP
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hnode : t.locals.lookup (nm "node") = some (.val (.word node)) := by rw [hloc]; exact hA0
  exact nodeHash_main hC hA hT hNS hX0 hp hord htr hNd hL hnode t ht rfl hg

end InitECandidate.Solver.MemSafe.Trie
