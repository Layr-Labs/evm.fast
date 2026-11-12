import InitECandidate.Solver.MemSafe.Trie.FillFn
import InitECandidate.Solver.Band2.MptRoot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `node_rlp`, `node_hash`, `mpt_root`: footprint specs
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- Normal ends satisfy `S`; every other end satisfies `Q`. -/
def RQ (S : State σ → Prop) (Q : Option (PanSemResultExact 64) → State σ → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → S t) ∧ ∀ r', r = some r' → Q (some r') t

theorem hoareG_seqRQ {P S : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64} (ha : HoareG σ X P a (RQ S Q)) (hb : HoareG σ X S b Q) :
    HoareG σ X P (.seq a b) Q :=
  hoareG_seq ha (fun r t _ hr _ h => by
    obtain ⟨r', hr'⟩ : ∃ r', r = some r' := by
      cases r with
      | none => exact absurd rfl hr
      | some r' => exact ⟨r', rfl⟩
    subst hr'
    exact h.2 r' rfl) (hoareG_pre hb fun t _ h => h.1 rfl)

theorem rq_none {S : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop} {t : State σ}
    (h : S t) : RQ S Q none t := ⟨fun _ => h, fun r' hr' => nomatch hr'⟩

theorem rq_some {S : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {t : State σ} {r : PanSemResultExact 64} (h : Q (some r) t) : RQ S Q (some r) t :=
  And.intro (fun h' => nomatch h') (fun r' hr' => by cases hr'; exact h)

/-- `if c { return e }` followed by `b`. -/
theorem hoareG_iteRet {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c e : ExpHOL 64} {b : ProgHOL 64}
    (hret : ∀ s : State σ, InCtx s X → P s → ∀ w, ev s c = some (.val (.word w)) → w ≠ 0 →
      ∀ v, ev s e = some v → Q (some (.returned v)) (emptyLocalsHOLFinite s))
    (hb : HoareG σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) b Q) :
    HoareG σ X P (.seq (.ite c (.return e) .skip) b) Q := by
  refine hoareG_seqRQ (S := fun s => P s ∧ ev s c = some (.val (.word 0))) ?_ hb
  refine hoareG_ite ?_ ?_
  · exact hoareG_return fun s hs ⟨hP, w, hw, hw0⟩ v hv => rq_some (hret s hs hP w hw hw0 v hv)
  · exact hoareG_skip fun s _ h => rq_none h

theorem hoareG_seqPQ' {P S E : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64} (ha : HoareG σ X P a (PG S E)) (hb : HoareG σ X S b Q)
    (hE : ∀ (r : PanSemResultExact 64) (t : State σ), Abn r → E t → Q (some r) t) :
    HoareG σ X P (.seq a b) Q :=
  hoareG_seq ha (fun r t _ hr _ h => by
    obtain ⟨r', hr'⟩ : ∃ r', r = some r' := by
      cases r with
      | none => exact absurd rfl hr
      | some r' => exact ⟨r', rfl⟩
    subst hr'
    exact hE r' t (h.2 r' rfl).1 (h.2 r' rfl).2) (hoareG_pre hb fun t _ h => h.1 rfl)

/-- The result of `node_rlp`. -/
def NrQ (Nd : BitVec 64 → Prop) (s0 : State σ) (p : Ptrs) :
    Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => Foot Nd s0 t p ∧ ∀ v, r = some (.returned v) →
    ∃ a b : BitVec 64, v = .rStruct [.val (.word a), .val (.word b)]

theorem rstruct_words {s : State σ} {a b : ExpHOL 64} {v : ValueHOL 64}
    (hv : ev s (.rstruct [a, b]) = some v) (ha : ∀ w, ev s a = some w → ∃ x, w = .val (.word x))
    (hb : ∀ w, ev s b = some w → ∃ x, w = .val (.word x)) :
    ∃ x y : BitVec 64, v = .rStruct [.val (.word x), .val (.word y)] := by
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  obtain ⟨v1, vs1, rfl, e1, q1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, e2, q2⟩ := evs_cons_inv q1
  have : vs2 = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at q2; exact (Option.some.inj q2).symm
  subst this
  obtain ⟨x, rfl⟩ := ha v1 e1
  obtain ⟨y, rfl⟩ := hb v2 e2
  exact ⟨x, y, rfl⟩

theorem ld_word {s : State σ} {a : ExpHOL 64} {w : ValueHOL 64}
    (h : ev s (.load .one a) = some w) : ∃ x, w = .val (.word x) := by
  obtain ⟨u, -, -, rfl⟩ := ev_load1_inv' h
  exact ⟨_, rfl⟩

theorem nd_of_load {Nd : BitVec 64 → Prop} {node w : BitVec 64} {k : Nat} {s : State σ}
    (hNS : MemSafe.NullSafe X) (hs : InCtx s X)
    (hn : s.locals.lookup (nm "node") = some (.val (.word node)))
    (hw : ev s (.op .add [lv (nm "node"), cw k]) = some (.val (.word w))) (hmem : s.memaddrs w)
    (hk : k < 1000) (hNd0 : Nd node ∨ node.toNat < nullMax) : Nd node := by
  rcases hNd0 with h | h
  · exact h
  · exfalso
    rw [ev_add_cw hn k] at hw
    have hw1 := Option.some.inj hw
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw1
    have hb := hNS w (hs.2.1 ▸ hmem)
    unfold nullMax at h
    rw [← hw1, toNat_add_k (by omega)] at hb
    unfold heapBase at hb
    omega

set_option maxHeartbeats 4000000 in
theorem nodeRlp_main (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) {Nd : BitVec 64 → Prop} {node : BitVec 64}
    {p : Ptrs} {s0 : State σ} (hp : ptrsOf s0 = some p) (hord : p.Ordered)
    (htr : TrieOK s0 Nd p.hp) (hNd0 : Nd node ∨ node.toNat < nullMax) (hL : LenStat Nd s0)
    (hnode : s0.locals.lookup (nm "node") = some (.val (.word node))) :
    HoareG σ X (fun t => t = s0) Band2.nrBody (NrQ Nd s0 p) := by
  unfold Band2.nrBody
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
    refine ⟨foot_of_clean hp hord rfl rfl, fun v' hv' => ?_⟩
    cases hv'
    exact rstruct_words hv (fun w'' h => ⟨rd s1.memory w, by
      rw [ev_lv, hs2, lk_set_self] at h; exact (Option.some.inj h).symm⟩) (fun w'' h => ld_word h)
  refine hoareG_seqRQ (S := fun t => t = s2 ∧ rd s1.memory node ≠ 0) ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_callD (spec_mpt_fail hC) ?_ ?_
      · intro s hs hP vs hvs callee v st hR hst
        exact absurd rfl ((hR (by simp [Good])).2 v)
      · intro s hs hP vs hvs callee r st hR hst habn
        obtain ⟨⟨hPs, -⟩, -⟩ := hP
        subst hPs
        obtain ⟨hcl, -⟩ := hR (abn_good habn)
        refine rq_some ⟨foot_of_clean hp hord hcl.1 hcl.2, (fun v hv => ?_)⟩
        cases hv
        rcases habn with ⟨e, v', h⟩ | ⟨e, h⟩ <;> cases h
    · refine hoareG_skip fun s _ ⟨⟨hP, _⟩, hc⟩ => rq_none ⟨hP, ?_⟩
      subst hP
      obtain ⟨x', y', hx', hy', hxy⟩ := cmp_false hc
      have hx := Band2.ev_lds_lv hn2 hx'
      cases hx
      rw [ev_cw] at hy'
      cases hy'
      have hx0 := Spec.equal_false hxy
      intro h; apply hx0
      show rd s1.memory (node + BitVec.ofNat 64 0) = 0
      simpa using h
  refine hoareG_seqPQ' (S := fun t => Foot Nd s1 t p) (E := fun t => Foot Nd s1 t p) ?_ ?_
    (fun r t hab h => ⟨h, (fun v hv => by
      cases hv
      rcases hab with ⟨e, v', h'⟩ | ⟨e, h'⟩ <;> cases h')⟩)
  · refine hoareG_callDP (fillG hC hA hT hNS hX0) ?_ ?_
    · intro s' hs' hP' vs hvs callee v st hR hst
      obtain ⟨hPs, hk0⟩ := hP'
      subst hPs
      rw [evs_cons (ev_lw hn2) evs_nil] at hvs
      simp only [Option.some.injEq] at hvs
      subst hvs
      have hrk : RecKind (rd s1.memory node) := by
        have h3 := (htr.1 node hNd).2.2.1
        have hne : (rd s1.memory node).toNat ≠ 0 := fun h => hk0 (BitVec.eq_of_toNat_eq (by simpa using h))
        unfold RecKind
        rcases (by omega : (rd s1.memory node).toNat = 1 ∨ (rd s1.memory node).toNat = 2 ∨
            (rd s1.memory node).toNat = 3) with h | h | h
        · exact Or.inl (BitVec.eq_of_toNat_eq (by simpa using h))
        · exact Or.inr (Or.inl (BitVec.eq_of_toNat_eq (by simpa using h)))
        · exact Or.inr (Or.inr (BitVec.eq_of_toNat_eq (by simpa using h)))
      exact hR (by simp [Good]) node p Nd rfl hp hord htr hNd hrk hL
    · intro s' hs' hP' vs hvs callee r st hR hst habn
      obtain ⟨hPs, hk0⟩ := hP'
      subst hPs
      rw [evs_cons (ev_lw hn2) evs_nil] at hvs
      simp only [Option.some.injEq] at hvs
      subst hvs
      have hrk : RecKind (rd s1.memory node) := by
        have h3 := (htr.1 node hNd).2.2.1
        have hne : (rd s1.memory node).toNat ≠ 0 := fun h => hk0 (BitVec.eq_of_toNat_eq (by simpa using h))
        unfold RecKind
        rcases (by omega : (rd s1.memory node).toNat = 1 ∨ (rd s1.memory node).toNat = 2 ∨
            (rd s1.memory node).toNat = 3) with h | h | h
        · exact Or.inl (BitVec.eq_of_toNat_eq (by simpa using h))
        · exact Or.inr (Or.inl (BitVec.eq_of_toNat_eq (by simpa using h)))
        · exact Or.inr (Or.inr (BitVec.eq_of_toNat_eq (by simpa using h)))
      exact hR (abn_good habn) node p Nd rfl hp hord htr hNd hrk hL
  · refine hoareG_return fun s _ hS v hv => ⟨hS, (fun v' hv' => ?_)⟩
    cases hv'
    exact rstruct_words hv (fun w'' h => ld_word h) (fun w'' h => ld_word h)

/-- **`node_rlp` (exception-inclusive footprint).** -/
theorem nodeRlpG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) :
    FunSpec σ X (nm "node_rlp") (fun vs s r t => Good (some r) →
      ∀ (node : BitVec 64) (p : Ptrs) (Nd : BitVec 64 → Prop), vs = [.val (.word node)] →
        ptrsOf s = some p → p.Ordered → TrieOK s Nd p.hp → (Nd node ∨ node.toNat < nullMax) →
        LenStat Nd s → Foot Nd s t p ∧ ∀ v, r = .returned v →
          ∃ a b : BitVec 64, v = .rStruct [.val (.word a), .val (.word b)]) := by
  refine funSpecG_of_hoareG (R := fun vs s r t => ∀ (node : BitVec 64) (p : Ptrs)
      (Nd : BitVec 64 → Prop), vs = [.val (.word node)] →
        ptrsOf s = some p → p.Ordered → TrieOK s Nd p.hp → (Nd node ∨ node.toNat < nullMax) →
        LenStat Nd s → Foot Nd s t p ∧ ∀ v, r = .returned v →
          ∃ a b : BitVec 64, v = .rStruct [.val (.word a), .val (.word b)]) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hA0⟩ := lookupCode_one Band2.code_nr hl
  intro t ht hP hg r' hr' node p Nd hvs hp hord htr hNd hL
  obtain rfl := hP
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hnode : t.locals.lookup (nm "node") = some (.val (.word node)) := by rw [hloc]; exact hA0
  have := nodeRlp_main hC hA hT hNS hX0 hp hord htr hNd hL hnode t ht rfl hg
  rw [hr'] at this
  exact ⟨this.1, fun v hv => this.2 v (by rw [hv])⟩

end InitECandidate.Solver.MemSafe.Trie
