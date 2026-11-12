import InitECandidate.Solver.Spec.Inv.Htab

/-!
# Well-formed hash tables (Patricia tries)

`TableWF s T`: the table with header at `T` is well formed in state `s`. Field offsets are
those of `lib/htab.pnk`: header `KEYLEN 0, KEYSTRIDE 8, COUNT 24, KEYS 32, NODES 40,
ORDER 48, ROOT 56, NEXT 64, FREE 72, NODECAP 80`; node `i` at `nodes + 32 i` with
`PARENT 0, LEFT 8, RIGHT 16, KIND 24`; a node is a leaf iff `KIND = 8 * KEYLEN` (`KB`).

The predicate has three layers, all read from `memory` (plus memory domain and byte order
for the key bytes), so it is `MemOnly` (`tableWF_memOnly`):

1. **Separation** (`Sep`): header (88 bytes), node array (`32 (cap + 1)`), order array
   (`8 (cap + 1)`) and key array (`stride (cap + 1)`) are pairwise disjoint, non-wrapping,
   8-aligned intervals. Every store `htab_del` performs hits one of them at an index
   `≤ cap`, so a store never reaches another component (in particular not the count).
2. **Tree shape** over a ghost set `L` of live nodes (`Shape`): indices in `[1, cap]`; root
   `0` iff no live node; parent/child pointers consistent; bit index strictly increasing
   from parent to child (acyclicity); `order[0, count)` lists exactly the live leaves, each
   leaf's `RIGHT` is its ordinal.
3. **Walk correctness** (`walk`): the key of every live leaf leads the `htab_find_leaf`
   walk (`WalkFrom`, the loop of `htab_find_leaf` as an inductive relation) to that leaf.

Layer 3 is what makes `htab_del` *succeed* on the key `htab_truncate` passes (the last
entry's key), so the count drops each iteration; layers 1–2 make the subsequent stores
harmless and are what `htab_del` must re-establish.

Proved here: `walkFrom_functional` (the walk is deterministic, so `htab_find_leaf` can only
return the last leaf), `last_leaf` (the last entry is a live leaf with `RIGHT = count - 1`,
so `htab_del` skips its order-hole branch), `last_parent` (a non-root last leaf has a live
internal parent pointing to it), `root_leaf_alone` (a leaf root is the only live node, via
the strictly increasing bit indices). The remaining obligation is `DelSpec σ X TableWF`
(`Inv/Htab.lean`): the Hoare proof through `htab_del`'s body (two calls, eight stores).
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Views of a table -/

/-- Header field at byte offset `off`. -/
def hdr (m : Mem) (T : BitVec 64) (off : Nat) : BitVec 64 := rd m (T + BitVec.ofNat 64 off)

/-- Field at byte offset `off` of node `i`. -/
def nodeF (m : Mem) (T i : BitVec 64) (off : Nat) : BitVec 64 :=
  rd m (hdr m T 40 + i * BitVec.ofNat 64 32 + BitVec.ofNat 64 off)

abbrev PAR (m : Mem) (T i : BitVec 64) : BitVec 64 := nodeF m T i 0
abbrev LEFT (m : Mem) (T i : BitVec 64) : BitVec 64 := nodeF m T i 8
abbrev RIGHT (m : Mem) (T i : BitVec 64) : BitVec 64 := nodeF m T i 16
abbrev KIND (m : Mem) (T i : BitVec 64) : BitVec 64 := nodeF m T i 24

/-- Leaf index at insertion ordinal `j`. -/
def ORD (m : Mem) (T j : BitVec 64) : BitVec 64 := rd m (hdr m T 48 + j * BitVec.ofNat 64 8)

/-- The bit index of leaves: `8 * key_len`. -/
def KB (m : Mem) (T : BitVec 64) : BitVec 64 := hdr m T 0 * BitVec.ofNat 64 8

/-- The key slot of node `i`. -/
def keyPtr (m : Mem) (T i : BitVec 64) : BitVec 64 := hdr m T 32 + i * hdr m T 8

def CNT (m : Mem) (T : BitVec 64) : Nat := (hdr m T 24).toNat
def CAP (m : Mem) (T : BitVec 64) : Nat := (hdr m T 80).toNat

/-! ## Key bits, as `HT_BIT(key, b) == 0` reads them -/

/-- The byte at `a`, as `ld8` reads it. -/
noncomputable def kbyte (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (a : BitVec 64) :
    Option UInt8 :=
  @panMemLoadByteHOL 64 _ m d (fun x => Classical.propDecidable (d x)) be a

/-- `some true` iff bit `b` of the key at `key` is `0` (the walk goes left). -/
noncomputable def kbit (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (key b : BitVec 64) :
    Option Bool :=
  (kbyte m d be (key + (b >>> (3 : Nat)))).map fun byte =>
    ((BitVec.ofNat 64 byte.toNat >>> (BitVec.ofNat 64 7 - (b &&& BitVec.ofNat 64 7)).toNat) &&&
      BitVec.ofNat 64 1) == BitVec.ofNat 64 0

/-- The loop of `htab_find_leaf` from node `n` ends at `v`. -/
inductive WalkFrom (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T key : BitVec 64) :
    BitVec 64 → BitVec 64 → Prop
  | zero : WalkFrom m d be T key 0 0
  | leaf {n : BitVec 64} : n ≠ 0 → KIND m T n = KB m T → WalkFrom m d be T key n n
  | left {n v : BitVec 64} : n ≠ 0 → KIND m T n ≠ KB m T → kbit m d be key (KIND m T n) = some true →
      WalkFrom m d be T key (LEFT m T n) v → WalkFrom m d be T key n v
  | right {n v : BitVec 64} : n ≠ 0 → KIND m T n ≠ KB m T →
      kbit m d be key (KIND m T n) = some false →
      WalkFrom m d be T key (RIGHT m T n) v → WalkFrom m d be T key n v

theorem walkFrom_functional {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T key n v v' : BitVec 64}
    (h : WalkFrom m d be T key n v) (h' : WalkFrom m d be T key n v') : v = v' := by
  induction h generalizing v' with
  | zero => cases h' with
    | zero => rfl
    | leaf hn _ => exact absurd rfl hn
    | left hn _ _ _ => exact absurd rfl hn
    | right hn _ _ _ => exact absurd rfl hn
  | leaf hn hk => cases h' with
    | zero => exact absurd rfl hn
    | leaf _ _ => rfl
    | left _ hk' _ _ => exact absurd hk hk'
    | right _ hk' _ _ => exact absurd hk hk'
  | left hn hk hb _ ih => cases h' with
    | zero => exact absurd rfl hn
    | leaf _ hk' => exact absurd hk' hk
    | left _ _ _ hw => exact ih hw
    | right _ _ hb' _ => rw [hb] at hb'; cases hb'
  | right hn hk hb _ ih => cases h' with
    | zero => exact absurd rfl hn
    | leaf _ hk' => exact absurd hk' hk
    | left _ _ hb' _ => rw [hb] at hb'; cases hb'
    | right _ _ _ hw => exact ih hw

/-! ## The predicate -/

/-- `[a, a + la)` and `[b, b + lb)` are disjoint. -/
def Disj (a la b lb : Nat) : Prop := a + la ≤ b ∨ b + lb ≤ a

/-- Layer 1: separation of the four components. -/
def Sep (m : Mem) (T : BitVec 64) : Prop :=
  let t := T.toNat
  let N := (hdr m T 40).toNat
  let O := (hdr m T 48).toNat
  let K := (hdr m T 32).toNat
  let C := CAP m T
  let S := (hdr m T 8).toNat
  t % 8 = 0 ∧ N % 8 = 0 ∧ O % 8 = 0 ∧ K % 8 = 0 ∧ S % 8 = 0 ∧ (hdr m T 0).toNat ≤ S ∧
  t + 88 ≤ 2 ^ 64 ∧ N + 32 * (C + 1) ≤ 2 ^ 64 ∧ O + 8 * (C + 1) ≤ 2 ^ 64 ∧
  K + S * (C + 1) ≤ 2 ^ 64 ∧
  Disj t 88 N (32 * (C + 1)) ∧ Disj t 88 O (8 * (C + 1)) ∧ Disj t 88 K (S * (C + 1)) ∧
  Disj N (32 * (C + 1)) O (8 * (C + 1)) ∧ Disj N (32 * (C + 1)) K (S * (C + 1)) ∧
  Disj O (8 * (C + 1)) K (S * (C + 1))

/-- Layers 2 and 3 over the live set `L`. -/
structure Shape (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64)
    (L : BitVec 64 → Prop) : Prop where
  cnt_le : CNT m T ≤ CAP m T
  live_range : ∀ i, L i → 1 ≤ i.toNat ∧ i.toNat ≤ CAP m T
  root_empty : hdr m T 56 = 0 → ∀ i, ¬ L i
  root_live : hdr m T 56 ≠ 0 → L (hdr m T 56) ∧ PAR m T (hdr m T 56) = 0
  internal : ∀ i, L i → KIND m T i ≠ KB m T →
    L (LEFT m T i) ∧ L (RIGHT m T i) ∧ PAR m T (LEFT m T i) = i ∧ PAR m T (RIGHT m T i) = i ∧
    LEFT m T i ≠ RIGHT m T i ∧ (KIND m T i).toNat < (KIND m T (LEFT m T i)).toNat ∧
    (KIND m T i).toNat < (KIND m T (RIGHT m T i)).toNat
  parent : ∀ i, L i → i ≠ hdr m T 56 →
    L (PAR m T i) ∧ KIND m T (PAR m T i) ≠ KB m T ∧
    (LEFT m T (PAR m T i) = i ∨ RIGHT m T (PAR m T i) = i)
  order_live : ∀ j : BitVec 64, j.toNat < CNT m T →
    L (ORD m T j) ∧ KIND m T (ORD m T j) = KB m T ∧ RIGHT m T (ORD m T j) = j
  leaf_ordered : ∀ i, L i → KIND m T i = KB m T → ∃ j : BitVec 64, j.toNat < CNT m T ∧ ORD m T j = i
  walk : ∀ j : BitVec 64, j.toNat < CNT m T →
    WalkFrom m d be T (keyPtr m T (ORD m T j)) (hdr m T 56) (ORD m T j)
  kind_le : ∀ i, L i → (KIND m T i).toNat ≤ (KB m T).toNat

/-! ## Allocation state and the Patricia prefix property -/

/-- The first node index never handed out (`HT_NEXT`). -/
def NX (m : Mem) (T : BitVec 64) : Nat := (hdr m T 64).toNat

/-- The free list from `h` is exactly `fl`, linked through `PARENT`, ending in `0`. -/
def FreeChain (m : Mem) (T : BitVec 64) : BitVec 64 → List (BitVec 64) → Prop
  | h, [] => h = 0
  | h, x :: xs => h = x ∧ FreeChain m T (PAR m T x) xs

/-- `x` lies in the subtree of `i` (following child pointers of internal nodes). -/
inductive Anc (m : Mem) (T : BitVec 64) : BitVec 64 → BitVec 64 → Prop
  | refl (i : BitVec 64) : Anc m T i i
  | left {i x : BitVec 64} : KIND m T i ≠ KB m T → Anc m T (LEFT m T i) x → Anc m T i x
  | right {i x : BitVec 64} : KIND m T i ≠ KB m T → Anc m T (RIGHT m T i) x → Anc m T i x

/-- Layer 4 (needed by insertion): node allocation and the prefix property. -/
structure Extra (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64)
    (L : BitVec 64 → Prop) : Prop where
  nx_pos : 1 ≤ NX m T
  nx_le : NX m T ≤ CAP m T + 1
  live_lt : ∀ i, L i → i.toNat < NX m T
  free : ∃ fl : List (BitVec 64), FreeChain m T (hdr m T 72) fl ∧ fl.Nodup ∧
    (∀ x ∈ fl, 1 ≤ x.toNat ∧ x.toNat < NX m T ∧ ¬ L x) ∧ 2 * CNT m T + fl.length ≤ NX m T
  pfx : ∀ i, L i → KIND m T i ≠ KB m T → ∀ x y, Anc m T i x → Anc m T i y →
    KIND m T x = KB m T → KIND m T y = KB m T → ∀ c : BitVec 64, c.toNat < (KIND m T i).toNat →
    kbit m d be (keyPtr m T x) c = kbit m d be (keyPtr m T y) c
  /-- Size bounds (stride, capacity): growth's `(2 cap + 1) * stride` cannot wrap, and growth
  adds room (`cap ≥ 1`). -/
  bnd : (hdr m T 8).toNat ≤ 2 ^ 20 ∧ 1 ≤ CAP m T ∧ CAP m T ≤ 2 ^ 32

/-- **Well-formed table.** -/
def TableWF {σ : Type} (s : PanSemStateFiniteExact 64 σ) (T : BitVec 64) : Prop :=
  Sep s.memory T ∧ ∃ L, Shape s.memory s.memaddrs s.be T L ∧ Extra s.memory s.memaddrs s.be T L

theorem tableWF_memOnly {σ : Type} : MemOnly (σ := σ) TableWF := by
  intro s u T hm hd hb h
  unfold TableWF at h ⊢
  rw [hm, hd, hb]
  exact h

/-! ## Consequences used by the `htab_del` proof -/

section consequences
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}

/-- `lastKey` (what `htab_truncate` passes) is the key slot of the last entry. -/
theorem lastKey_eq : lastKey m T = keyPtr m T (ORD m T (hdr m T 24 - BitVec.ofNat 64 1)) := rfl

/-- The last entry is a live leaf whose ordinal field is `count - 1` (so `htab_del` takes
no order-hole branch) and whose key walks to it. -/
theorem last_leaf (h : Shape m d be T L) (hc : 0 < CNT m T) :
    let ℓ := ORD m T (hdr m T 24 - BitVec.ofNat 64 1)
    L ℓ ∧ KIND m T ℓ = KB m T ∧ RIGHT m T ℓ = hdr m T 24 - BitVec.ofNat 64 1 ∧
      WalkFrom m d be T (lastKey m T) (hdr m T 56) ℓ := by
  have hj : (hdr m T 24 - BitVec.ofNat 64 1).toNat < CNT m T := by
    unfold CNT at hc ⊢
    rw [BitVec.toNat_sub_of_le (by
      rw [BitVec.le_def, BitVec.toNat_ofNat]; simp only [Nat.reducePow, Nat.one_mod]; omega)]
    simp only [BitVec.toNat_ofNat, Nat.reducePow, Nat.one_mod]
    omega
  obtain ⟨h1, h2, h3⟩ := h.order_live _ hj
  exact ⟨h1, h2, h3, h.walk _ hj⟩

/-- `htab_find_leaf` on the last key can only return the last leaf. -/
theorem find_last (h : Shape m d be T L) (hc : 0 < CNT m T) {v : BitVec 64}
    (hv : WalkFrom m d be T (lastKey m T) (hdr m T 56) v) :
    v = ORD m T (hdr m T 24 - BitVec.ofNat 64 1) :=
  walkFrom_functional hv (last_leaf h hc).2.2.2

/-- A non-root live leaf has a live internal parent that points to it; its sibling is live
and has the same parent. -/
theorem last_parent (h : Shape m d be T L) {ℓ : BitVec 64} (hl : L ℓ) (hr : ℓ ≠ hdr m T 56) :
    let p := PAR m T ℓ
    L p ∧ KIND m T p ≠ KB m T ∧ (LEFT m T p = ℓ ∨ RIGHT m T p = ℓ) ∧
      L (LEFT m T p) ∧ L (RIGHT m T p) ∧ PAR m T (LEFT m T p) = p ∧
      PAR m T (RIGHT m T p) = p ∧ LEFT m T p ≠ RIGHT m T p := by
  obtain ⟨hp, hk, hch⟩ := h.parent ℓ hl hr
  obtain ⟨a, b, c, e, f, -, -⟩ := h.internal _ hp hk
  exact ⟨hp, hk, hch, a, b, c, e, f⟩

/-- Live non-root nodes have smaller-bit live internal ancestors up to the root. -/
theorem root_internal_of (h : Shape m d be T L) :
    ∀ k i, (KIND m T i).toNat = k → L i → i ≠ hdr m T 56 → KIND m T (hdr m T 56) ≠ KB m T := by
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih =>
  intro i hk hi hr
  obtain ⟨hp, hpk, hch⟩ := h.parent i hi hr
  by_cases hpr : PAR m T i = hdr m T 56
  · rw [← hpr]; exact hpk
  · obtain ⟨-, -, -, -, -, hlt1, hlt2⟩ := h.internal _ hp hpk
    have hlt : (KIND m T (PAR m T i)).toNat < k := by
      rcases hch with hc | hc
      · rw [hc] at hlt1; omega
      · rw [hc] at hlt2; omega
    exact ih _ hlt _ rfl hp hpr

/-- A leaf root is the only live node (`htab_del`'s `leaf == root` branch empties the table). -/
theorem root_leaf_alone (h : Shape m d be T L) (hk : KIND m T (hdr m T 56) = KB m T) :
    ∀ i, L i → i = hdr m T 56 := by
  intro i hi
  by_contra hr
  exact root_internal_of h _ i rfl hi hr hk

end consequences

end InitECandidate.Solver.Spec.Inv
