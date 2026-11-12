import InitECandidate.Solver.MemSafe.Trie.FinFirstG

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `_node_rlp_finish`: the exception-inclusive footprint spec

**`finishG`**: for every good result (returns and the `mpt_fail` exceptions), the allocator moved
monotonically (only `heap_ptr`, every other global kept) and memory changed only in the cache cells of the
node and of its children (`CacheW`), the keccak sponge and pad, and the cells of `[p.hp, p'.hp)`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem hoareG_decL {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQL : ∀ r (t : State σ) (L : Locals), Q r t → Q r { t with locals := L })
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (fun t => t = setVarHOLFinite x v s) body Q) :
    HoareG σ X P (.dec x sh e body) Q := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  exact hoareG_conseq (h s hs hp v hv hsh) (fun _ _ h => h) fun r t _ _ hq => hQL _ _ _ hq

theorem fEx_of_clean {s0 t : State σ} {p : Ptrs} {ND : BitVec 64} (hp : ptrsOf s0 = some p)
    (ho : p.Ordered) (hc : Clean s0 t) : FEx s0 p ND t := by
  refine ⟨fun g _ => by rw [hc.2], p, ?_, ho, le_rfl, fun a ha => absurd (by rw [hc.1]) ha⟩
  unfold ptrsOf gword at hp ⊢; rw [hc.2]; exact hp

theorem finishG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) :
    FunSpec σ X (nm "_node_rlp_finish") (fun vs s r t => Good (some r) →
      ∀ (fr nd : BitVec 64) (p : Ptrs), vs = [.val (.word fr), .val (.word nd)] →
        ptrsOf s = some p → p.Ordered →
        (∃ Nd, TrieOK s Nd p.hp ∧ Nd nd ∧ RecKind (rd s.memory nd)) → RC s fr nd →
        (rd s.memory nd ≠ 3 → heapBase ≤ (panByteAlignHOL (rd s.memory (fr + 24))).toNat ∧
          (panByteAlignHOL (rd s.memory (fr + 24))).toNat < p.hp) →
        (pl1 s nd (rd s.memory (fr + 40))).toNat < 2 ^ 62 →
        (rd s.memory nd = 1 → (pl1 s nd (rd s.memory (fr + 40))).toNat =
          encLenN (ld8W s (rd s.memory (fr + 24))) (rd s.memory (fr + 32)) +
          encLenN (ld8W s (rd s.memory (nd + 48))) (rd s.memory (nd + 56))) →
        (rd s.memory nd = 2 → (pl1 s nd (rd s.memory (fr + 40))).toNat =
          encLenN (ld8W s (rd s.memory (fr + 24))) (rd s.memory (fr + 32)) +
          (RL s.memory (rd s.memory (nd + 48))).toNat) →
        (rd s.memory nd = 3 → (pl1 s nd (rd s.memory (fr + 40))).toNat = brSumN s.memory nd 16 +
          encLenN (ld8W s (rd s.memory (nd + 160))) (rd s.memory (nd + 168))) →
        FEx s p nd t) := by
  refine funSpecG_of_hoareG (R := fun vs s r t => ∀ (fr nd : BitVec 64) (p : Ptrs),
      vs = [.val (.word fr), .val (.word nd)] → ptrsOf s = some p → p.Ordered →
        (∃ Nd, TrieOK s Nd p.hp ∧ Nd nd ∧ RecKind (rd s.memory nd)) → RC s fr nd →
        (rd s.memory nd ≠ 3 → heapBase ≤ (panByteAlignHOL (rd s.memory (fr + 24))).toNat ∧
          (panByteAlignHOL (rd s.memory (fr + 24))).toNat < p.hp) →
        (pl1 s nd (rd s.memory (fr + 40))).toNat < 2 ^ 62 →
        (rd s.memory nd = 1 → (pl1 s nd (rd s.memory (fr + 40))).toNat =
          encLenN (ld8W s (rd s.memory (fr + 24))) (rd s.memory (fr + 32)) +
          encLenN (ld8W s (rd s.memory (nd + 48))) (rd s.memory (nd + 56))) →
        (rd s.memory nd = 2 → (pl1 s nd (rd s.memory (fr + 40))).toNat =
          encLenN (ld8W s (rd s.memory (fr + 24))) (rd s.memory (fr + 32)) +
          (RL s.memory (rd s.memory (nd + 48))).toNat) →
        (rd s.memory nd = 3 → (pl1 s nd (rd s.memory (fr + 40))).toNat = brSumN s.memory nd 16 +
          encLenN (ld8W s (rd s.memory (nd + 160))) (rd s.memory (nd + 168))) →
        FEx s p nd t) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA0, hB0⟩ := lookupCode_two code_node_rlp_finish (by decide) hl
  intro s0' hs' hs0 hg r' hr' FR ND p hvs hp hord ⟨Nd, htrie, hNd, hrk⟩ hRC hCB hPL hs1 hs2 hs3
  subst s0'
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hfr0 : s0.locals.lookup (nm "fr") = some (.val (.word FR)) := by rw [hloc]; exact hA0
  have hnd0 : s0.locals.lookup (nm "node") = some (.val (.word ND)) := by rw [hloc]; exact hB0
  have hE := heapEnd_lt'
  have hpE := hord.2.1
  obtain ⟨ks, kp, k1, k2, k3, k4, -, k6, -, k8, -⟩ := htrie.2.2.1
  have hK : KOK s0 ks kp := ⟨k1, k2, k3, k4, by omega, by omega⟩
  obtain ⟨hRC3, hRC2, hRC1⟩ := hRC
  let QF : Option (PanSemResultExact 64) → State σ → Prop := fun r t => FEx s0 p ND t
  have hQL : ∀ r (t : State σ) (L : Locals), QF r t → QF r { t with locals := L } :=
    fun r t L h => fEx_locals L h
  have H : HoareG σ X (fun t => t = s0) finBody QF := by
    unfold finBody
    refine hoareG_decL hQL fun s1 _ hs1' v1 hv1 _ => ?_
    subst s1
    obtain rfl := ev_ldN hnd0 hv1
    rw [rd_add0]
    refine hoareG_decL hQL fun s2 _ hs2' v2 hv2 _ => ?_
    subst hs2'
    obtain ⟨w2, hw2, -, rfl⟩ := ev_load1_inv' hv2
    rw [ev_add_cw (by rw [lk_set_ne _ _ (by decide)]; exact hfr0) 40] at hw2
    cases hw2
    refine hoareG_decL hQL fun s3 _ hs3' v3 hv3 _ => ?_
    subst hs3'
    obtain ⟨w3, hw3, -, rfl⟩ := ev_load1_inv' hv3
    rw [ev_add_cw (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hfr0) 24]
      at hw3
    cases hw3
    refine hoareG_decL hQL fun s4 _ hs4' v4 hv4 _ => ?_
    subst hs4'
    obtain ⟨w4, hw4, -, rfl⟩ := ev_load1_inv' hv4
    rw [ev_add_cw (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide)]; exact hfr0) 32] at hw4
    cases hw4
    refine hoareG_pre (fin_firstG hC hX0 (s0 := s0) (FR := FR) (ND := ND)
      (PL0 := rd s0.memory (FR + BitVec.ofNat 64 40)) (CB := rd s0.memory (FR + BitVec.ofNat 64 24))
      (CL := rd s0.memory (FR + BitVec.ofNat 64 32)) (Q := QF)
      (fun r t o x h => fEx_locals _ h) hQL
      (fun r t hc _ => fEx_of_clean hp hord hc)
      (fin_secondG hC hA hT hNS hX0 hp hord htrie hNd hrk hK hRC3 hRC2 hRC1
        (fun h3 => (hCB h3).2) hPL hs1 hs2 hs3)) fun t _ ht => ?_
    subst ht
    refine ⟨⟨?_, ?_, ?_, ?_, ?_, ?_⟩, rfl, rfl, rfl⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
        lk_set_ne _ _ (by decide)]; exact hfr0
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
        lk_set_ne _ _ (by decide)]; exact hnd0
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
      exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
      exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide)]
      exact lk_set_self _ _ _
    · exact lk_set_self _ _ _
  exact H s0 hs' rfl hg

end InitECandidate.Solver.MemSafe.Trie
