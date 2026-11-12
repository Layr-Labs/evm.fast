import InitECandidate.Solver.Spec.Inv.HtabDelExtra

/-!
# Subtrees of a well-formed table

Pure lemmas on `Shape` and the subtree relation `Anc`:

* `anc_live`, `anc_kind` (bit indices grow down a subtree), `anc_up` (the parent of a proper
  descendant is still in the subtree), `anc_trans`, `anc_cmp` (two live ancestors of a node are
  comparable), `sib_disj` (the two children's subtrees are disjoint);
* `walk_anc`: a walk from a live node stays in its subtree and ends in a live leaf;
* `Pth`: the search loop of `htab_set` as a path from the root (`pth_live`, `pth_walk`: a walk from
  the root passes through every node of a path its key follows, `pth_transfer`: a key that agrees
  on the path's bits follows the same path).
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The child of `x` the walk takes on bit value `b` (`true`: bit `0`, left). -/
def child (m : Mem) (T x : BitVec 64) (b : Bool) : BitVec 64 := if b then LEFT m T x else RIGHT m T x

/-- The search loop of `htab_set` from `r`: it reached `x` from `q` (`q = 0` at the start), every
node it left had a bit index below `D`, and it followed `key`'s bits. -/
inductive Pth (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T key : BitVec 64) (D : Nat) (r : BitVec 64) :
    BitVec 64 → BitVec 64 → Prop
  | start : Pth m d be T key D r 0 r
  | step {q x : BitVec 64} (b : Bool) : Pth m d be T key D r q x → x ≠ 0 → KIND m T x ≠ KB m T →
      (KIND m T x).toNat < D → kbit m d be key (KIND m T x) = some b →
      Pth m d be T key D r x (child m T x b)

section tree
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
variable (hsh : Shape m d be T L)
include hsh

theorem anc_live {a x : BitVec 64} (h : Anc m T a x) (ha : L a) : L x := by
  induction h with
  | refl => exact ha
  | left hk _ ih => exact ih (hsh.internal _ ha hk).1
  | right hk _ ih => exact ih (hsh.internal _ ha hk).2.1

theorem anc_kind {a x : BitVec 64} (h : Anc m T a x) (ha : L a) :
    (KIND m T a).toNat ≤ (KIND m T x).toNat ∧ (x ≠ a → (KIND m T a).toNat < (KIND m T x).toNat) := by
  induction h with
  | refl => exact ⟨le_refl _, fun h => absurd rfl h⟩
  | left hk h' ih =>
      rename_i i x
      obtain ⟨lL, -, -, -, -, kL, -⟩ := hsh.internal _ ha hk
      have := (ih lL).1
      exact ⟨by omega, fun _ => by omega⟩
  | right hk h' ih =>
      rename_i i x
      obtain ⟨-, lR, -, -, -, -, kR⟩ := hsh.internal _ ha hk
      have := (ih lR).1
      exact ⟨by omega, fun _ => by omega⟩

theorem anc_trans {a b c : BitVec 64} (h1 : Anc m T a b) (h2 : Anc m T b c) : Anc m T a c := by
  induction h1 with
  | refl => exact h2
  | left hk _ ih => exact .left hk (ih h2)
  | right hk _ ih => exact .right hk (ih h2)

omit hsh in
theorem anc_trans' {a b c : BitVec 64} (h1 : Anc m T a b) (h2 : Anc m T b c) : Anc m T a c := by
  induction h1 with
  | refl => exact h2
  | left hk _ ih => exact .left hk (ih h2)
  | right hk _ ih => exact .right hk (ih h2)

/-- The parent of a proper descendant is in the subtree, live, internal, and points to it. -/
theorem anc_up {a x : BitVec 64} (h : Anc m T a x) (ha : L a) (hx : x ≠ a) :
    Anc m T a (PAR m T x) ∧ L (PAR m T x) ∧ KIND m T (PAR m T x) ≠ KB m T ∧
      (LEFT m T (PAR m T x) = x ∨ RIGHT m T (PAR m T x) = x) := by
  induction h with
  | refl => exact absurd rfl hx
  | left hk h' ih =>
      rename_i i x
      obtain ⟨lL, -, pL, -, -, -, -⟩ := hsh.internal _ ha hk
      by_cases e : x = LEFT m T i
      · subst e; rw [pL]; exact ⟨.refl _, ha, hk, Or.inl rfl⟩
      · obtain ⟨h1, h2, h3, h4⟩ := ih lL e
        exact ⟨.left hk h1, h2, h3, h4⟩
  | right hk h' ih =>
      rename_i i x
      obtain ⟨-, lR, -, pR, -, -, -⟩ := hsh.internal _ ha hk
      by_cases e : x = RIGHT m T i
      · subst e; rw [pR]; exact ⟨.refl _, ha, hk, Or.inr rfl⟩
      · obtain ⟨h1, h2, h3, h4⟩ := ih lR e
        exact ⟨.right hk h1, h2, h3, h4⟩

/-- Two live ancestors of a node are comparable. -/
theorem anc_cmp {a b x : BitVec 64} (h : Anc m T a x) (hb : Anc m T b x) (ha : L a) (lb : L b) :
    Anc m T a b ∨ Anc m T b a := by
  induction h with
  | refl => exact Or.inr hb
  | left hk h' ih =>
      rename_i i x
      obtain ⟨lL, -, pL, -, -, -, -⟩ := hsh.internal _ ha hk
      rcases ih hb lL with h1 | h1
      · exact Or.inl (.left hk h1)
      · by_cases e : b = LEFT m T i
        · rw [e]; exact Or.inl (.left hk (.refl _))
        · have := (anc_up hsh h1 lb (Ne.symm e)).1
          rw [pL] at this; exact Or.inr this
  | right hk h' ih =>
      rename_i i x
      obtain ⟨-, lR, -, pR, -, -, -⟩ := hsh.internal _ ha hk
      rcases ih hb lR with h1 | h1
      · exact Or.inl (.right hk h1)
      · by_cases e : b = RIGHT m T i
        · rw [e]; exact Or.inl (.right hk (.refl _))
        · have := (anc_up hsh h1 lb (Ne.symm e)).1
          rw [pR] at this; exact Or.inr this

/-- The subtrees of the two children of an internal node are disjoint. -/
theorem sib_disj {r x : BitVec 64} (hr : L r) (hk : KIND m T r ≠ KB m T) (h1 : Anc m T (LEFT m T r) x)
    (h2 : Anc m T (RIGHT m T r) x) : False := by
  obtain ⟨lL, lR, pL, pR, hne, kL, kR⟩ := hsh.internal _ hr hk
  rcases anc_cmp hsh h1 h2 lL lR with h | h
  · have := (anc_up hsh h lL (Ne.symm hne)).1
    rw [pR] at this
    have := (anc_kind hsh this lL).1
    omega
  · have := (anc_up hsh h lR hne).1
    rw [pL] at this
    have := (anc_kind hsh this lR).1
    omega

theorem kind_lt_kb {i : BitVec 64} (hi : L i) (hk : KIND m T i ≠ KB m T) :
    (KIND m T i).toNat < (KB m T).toNat := by
  have := hsh.kind_le i hi
  have : (KIND m T i).toNat ≠ (KB m T).toNat := fun h => hk (BitVec.eq_of_toNat_eq h)
  omega

/-- A walk from a live node stays in its subtree and ends in a live leaf. -/
theorem walk_anc {key x v : BitVec 64} (hw : WalkFrom m d be T key x v) (hx : L x) :
    Anc m T x v ∧ L v ∧ KIND m T v = KB m T := by
  induction hw with
  | zero => exact absurd hx (fun h => live_ne0 hsh h rfl)
  | leaf _ hk => exact ⟨.refl _, hx, hk⟩
  | left _ hk _ _ ih =>
      obtain ⟨a, b, c⟩ := ih (hsh.internal _ hx hk).1
      exact ⟨.left hk a, b, c⟩
  | right _ hk _ _ ih =>
      obtain ⟨a, b, c⟩ := ih (hsh.internal _ hx hk).2.1
      exact ⟨.right hk a, b, c⟩

/-- The walk from a leaf ends there. -/
theorem walk_leaf {key x v : BitVec 64} (hw : WalkFrom m d be T key x v) (hx : x ≠ 0)
    (hk : KIND m T x = KB m T) : v = x :=
  walkFrom_functional hw (.leaf hx hk)

/-- One step of a walk through an internal node. -/
theorem walk_step {key x v : BitVec 64} {b : Bool} (hw : WalkFrom m d be T key x v) (hx : x ≠ 0)
    (hk : KIND m T x ≠ KB m T) (hb : kbit m d be key (KIND m T x) = some b) :
    WalkFrom m d be T key (child m T x b) v := by
  cases hw with
  | zero => exact absurd rfl hx
  | leaf _ hk' => exact absurd hk' hk
  | left _ _ hb' hw' =>
      rw [hb] at hb'; cases hb'; exact hw'
  | right _ _ hb' hw' =>
      rw [hb] at hb'; cases hb'; exact hw'

omit hsh in
theorem walk_step' {key x v : BitVec 64} {b : Bool} (hw : WalkFrom m d be T key x v) (hx : x ≠ 0)
    (hk : KIND m T x ≠ KB m T) (hb : kbit m d be key (KIND m T x) = some b) :
    WalkFrom m d be T key (child m T x b) v := by
  cases hw with
  | zero => exact absurd rfl hx
  | leaf _ hk' => exact absurd hk' hk
  | left _ _ hb' hw' =>
      rw [hb] at hb'; cases hb'; exact hw'
  | right _ _ hb' hw' =>
      rw [hb] at hb'; cases hb'; exact hw'

omit hsh in
theorem walk_child {key x v : BitVec 64} {b : Bool} (hx : x ≠ 0) (hk : KIND m T x ≠ KB m T)
    (hb : kbit m d be key (KIND m T x) = some b) (hw : WalkFrom m d be T key (child m T x b) v) :
    WalkFrom m d be T key x v := by
  cases b
  · exact .right hx hk hb hw
  · exact .left hx hk hb hw

/-- A path from a live root runs through live nodes of the root's subtree; its predecessor is the
parent. -/
theorem pth_live {key r q x : BitVec 64} {D : Nat} (h : Pth m d be T key D r q x) (hr : L r) :
    L x ∧ Anc m T r x ∧ ((q = 0 ∧ x = r) ∨ (L q ∧ KIND m T q ≠ KB m T ∧ (KIND m T q).toNat < D ∧
      PAR m T x = q ∧ Anc m T r q ∧ ∃ b, kbit m d be key (KIND m T q) = some b ∧ x = child m T q b)) := by
  induction h with
  | start => exact ⟨hr, .refl _, Or.inl ⟨rfl, rfl⟩⟩
  | step b h' hx hk hD hb ih =>
      rename_i q x
      obtain ⟨lx, ax, -⟩ := ih
      obtain ⟨lL, lR, pL, pR, -, -, -⟩ := hsh.internal _ lx hk
      cases b
      · exact ⟨lR, anc_trans hsh ax (.right hk (.refl _)), Or.inr ⟨lx, hk, hD, pR, ax, false, hb, rfl⟩⟩
      · exact ⟨lL, anc_trans hsh ax (.left hk (.refl _)), Or.inr ⟨lx, hk, hD, pL, ax, true, hb, rfl⟩⟩

end tree

/-- A walk from the root passes through every node of a path its key follows. -/
theorem pth_walk {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T key r q x v : BitVec 64} {D : Nat}
    (h : Pth m d be T key D r q x) (hw : WalkFrom m d be T key r v) : WalkFrom m d be T key x v := by
  induction h with
  | start => exact hw
  | step b _ hx hk _ hb ih => exact walk_step' ih hx hk hb

/-- A key that agrees with the path's key below `D` follows the same path. -/
theorem pth_transfer {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T key key' r q x : BitVec 64} {D : Nat}
    (h : Pth m d be T key D r q x) (hk : ∀ c : BitVec 64, c.toNat < D → kbit m d be key c = kbit m d be key' c) :
    Pth m d be T key' D r q x := by
  induction h with
  | start => exact .start
  | step b _ hx hkb hD hb ih => exact .step b ih hx hkb hD (by rw [← hk _ hD]; exact hb)

end InitECandidate.Solver.Spec.Inv
