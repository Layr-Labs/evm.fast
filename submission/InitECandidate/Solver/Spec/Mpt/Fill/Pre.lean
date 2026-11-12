import InitECandidate.Solver.Spec.Mpt.Fill.Needs

/-!
# `_node_rlp_fill`: the trie precondition, the record consistency, the callee hypotheses

**Trie facts** (`TrieOK s Nd HP`, all reading only *structure cells* of the nodes of `Nd` and
the globals `keccak_st` / `keccak_pad`):

* `NdShape`: every node of `Nd` lies in `[heapBase, HP)` with its kind's size (`nsz`: HASHED
  32, LEAF 64, EXT 56, BRANCH 176), has a kind `≤ 3`, and its children (extension `+48`,
  branch `+32 + 8i`, `i < 16`) are null (`< heapBase`) or nodes of `Nd`;
* `NdDisj`: distinct nodes of `Nd` are disjoint;
* `KBSep`: the keccak sponge (200 B) and pad (136 B) buffers are 8-aligned, lie in
  `[heapBase, HP)` and are disjoint from every node of `Nd`;
* `ValSep`: the first byte of a leaf / branch value (read when the length is nonzero) lies in
  an allocated cell; for a branch value that cell is also neither a cache cell (`b + 8/16/24`,
  `b ∈ Nd`) nor a keccak cell.

A *structure cell* of a node is a cell of its range other than the cache cells `+8` (RLP),
`+16` (RLP length) and `+24` (hash). `_node_rlp_finish` writes only cache cells, keccak cells
and fresh memory, so the trie facts survive the fill loop.

**Record consistency** `RC s fr nd`: the payload word `fr + 40` that `_node_rlp_begin` left
equals the encoded length (`encLen`, `valLen`: the guest's `rlp_bytes_encoded_len` /
`rlp_value_encoded_len`, through `hdrLen` = `rlp_header_len` and `beLen` = `rlp_be_len`) of
the compact path at `fr + 24` (length `fr + 32`), plus the leaf value; `0` for a branch.
This is what makes the buffer `_node_rlp_finish` allocates (`alloc(hl + payload)`) exactly as
long as what it writes.

**Callee hypotheses** (`BeginSpec`, `FinishSpec`), for returns only:

* `_node_rlp_begin(fr, nd)`, `fr` a scratch record, `nd` a node of a `TrieOK` set: keeps the
  allocator ordered, `scratch_ptr` and the keccak globals, does not lower `heap_ptr`, writes
  only `fr + 24/32/40` and cells unallocated at entry, and leaves `RC` with a fresh compact
  buffer (non-branch).
* `_node_rlp_finish(fr, nd)` under `TrieOK`, `RC` and an allocated compact buffer: same
  allocator facts, writes only `nd + 8`, `nd + 16`, `c + 24` for children `c ≥ heapBase` of
  `nd`, keccak cells and cells unallocated at entry.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch gword)

def gKst : MlS := nm "keccak_st"
def gKpad : MlS := nm "keccak_pad"

/-! ## Nodes -/

/-- Node size by kind. -/
def nsz (k : BitVec 64) : Nat := if k = 0 then 32 else if k = 1 then 64 else if k = 2 then 56 else 176

theorem nsz_ge (k : BitVec 64) : 32 ≤ nsz k := by unfold nsz; split_ifs <;> omega
theorem nsz_le (k : BitVec 64) : nsz k ≤ 176 := by unfold nsz; split_ifs <;> omega
theorem nsz_2 : nsz 2 = 56 := by decide
theorem nsz_3 : nsz 3 = 176 := by decide
theorem nsz_1 : nsz 1 = 64 := by decide

/-- A record node kind: LEAF, EXT or BRANCH. -/
def RecKind (k : BitVec 64) : Prop := k = 1 ∨ k = 2 ∨ k = 3

/-- A cache cell of the node at `a`: `+8` (RLP), `+16` (RLP length), `+24` (hash). -/
def CacheCell (a x : BitVec 64) : Prop := x = a + 8 ∨ x = a + 16 ∨ x = a + 24

def InNode (M : MemSafe.Mem) (a x : BitVec 64) : Prop :=
  a.toNat ≤ x.toNat ∧ x.toNat < a.toNat + nsz (rd M a)

/-- A structure cell of the node at `a`. -/
def StructCell (M : MemSafe.Mem) (a x : BitVec 64) : Prop := InNode M a x ∧ ¬ CacheCell a x

/-- The `i`-th branch child slot. -/
def slot (a : BitVec 64) (i : Nat) : BitVec 64 := a + BitVec.ofNat 64 (32 + 8 * i)

def NdShape (M : MemSafe.Mem) (Nd : BitVec 64 → Prop) (HP : Nat) : Prop :=
  ∀ a, Nd a → heapBase ≤ a.toNat ∧ a.toNat + nsz (rd M a) ≤ HP ∧ (rd M a).toNat ≤ 3 ∧
    (rd M a = 2 → NullOrNd Nd (rd M (a + 48))) ∧
    (rd M a = 3 → ∀ i : Nat, i < 16 → NullOrNd Nd (rd M (slot a i)))

def NdDisj (M : MemSafe.Mem) (Nd : BitVec 64 → Prop) : Prop :=
  ∀ a b, Nd a → Nd b → a ≠ b →
    a.toNat + nsz (rd M a) ≤ b.toNat ∨ b.toNat + nsz (rd M b) ≤ a.toNat

/-- A cell of the keccak sponge or pad buffer. -/
def KBuf (s : PanSemStateFiniteExact 64 σ) (x : BitVec 64) : Prop :=
  (∃ w, gword s gKst = some w ∧ w.toNat ≤ x.toNat ∧ x.toNat < w.toNat + 200) ∨
    (∃ w, gword s gKpad = some w ∧ w.toNat ≤ x.toNat ∧ x.toNat < w.toNat + 136)

def KBSep (s : PanSemStateFiniteExact 64 σ) (Nd : BitVec 64 → Prop) (HP : Nat) : Prop :=
  ∃ ks kp : BitVec 64, gword s gKst = some ks ∧ gword s gKpad = some kp ∧
    ks.toNat % 8 = 0 ∧ kp.toNat % 8 = 0 ∧ heapBase ≤ ks.toNat ∧ ks.toNat + 200 ≤ HP ∧
    heapBase ≤ kp.toNat ∧ kp.toNat + 136 ≤ HP ∧
    ∀ a, Nd a → (a.toNat + nsz (rd s.memory a) ≤ ks.toNat ∨ ks.toNat + 200 ≤ a.toNat) ∧
      (a.toNat + nsz (rd s.memory a) ≤ kp.toNat ∨ kp.toNat + 136 ≤ a.toNat)

/-- The first byte of the value `(vp, vl)` (read when `vl ≠ 0`) lies in an allocated cell that
no cache or keccak store touches. -/
def ValOK (s : PanSemStateFiniteExact 64 σ) (Nd : BitVec 64 → Prop) (HP : Nat)
    (vp vl : BitVec 64) : Prop :=
  vl ≠ 0 → heapBase ≤ (panByteAlignHOL vp).toNat ∧ (panByteAlignHOL vp).toNat < HP ∧
    (∀ b, Nd b → ¬ CacheCell b (panByteAlignHOL vp)) ∧ ¬ KBuf s (panByteAlignHOL vp)

/-- The first byte of the value `(vp, vl)` (read when `vl ≠ 0`) lies in an allocated cell. -/
def ValAl (HP : Nat) (vp vl : BitVec 64) : Prop :=
  vl ≠ 0 → heapBase ≤ (panByteAlignHOL vp).toNat ∧ (panByteAlignHOL vp).toNat < HP

/-- Leaf values: allocated first byte; branch values (read again after the child-reference
stores and the keccak calls of `_node_rlp_finish`): also outside cache and keccak cells. -/
def ValSep (s : PanSemStateFiniteExact 64 σ) (Nd : BitVec 64 → Prop) (HP : Nat) : Prop :=
  ∀ a, Nd a →
    (rd s.memory a = 1 → ValAl HP (rd s.memory (a + 48)) (rd s.memory (a + 56))) ∧
    (rd s.memory a = 3 → ValOK s Nd HP (rd s.memory (a + 160)) (rd s.memory (a + 168)))

/-- **The trie facts** of the node set `Nd`, with allocation bound `HP`. -/
def TrieOK (s : PanSemStateFiniteExact 64 σ) (Nd : BitVec 64 → Prop) (HP : Nat) : Prop :=
  NdShape s.memory Nd HP ∧ NdDisj s.memory Nd ∧ KBSep s Nd HP ∧ ValSep s Nd HP

/-! ## Encoded lengths (the guest's `rlp_*_len` functions) -/

def beLenN : Nat → Nat → Nat
  | 0, _ => 0
  | f + 1, v => if v = 0 then 0 else beLenN f (v / 256) + 1

/-- `rlp_be_len(v)`: the number of significant bytes of `v`. -/
def beLen (v : BitVec 64) : BitVec 64 := BitVec.ofNat 64 (beLenN 8 v.toNat)

/-- `rlp_header_len(n)`. -/
def hdrLen (n : BitVec 64) : BitVec 64 := if n.toNat ≤ 55 then 1 else 1 + beLen n

/-- `rlp_bytes_encoded_len(fb, n)`. -/
def encLen (fb n : BitVec 64) : BitVec 64 := if n = 1 ∧ fb.toNat < 128 then 1 else hdrLen n + n

/-- `rlp_value_encoded_len(p, n)` with `fb` the byte at `p` (read only when `n ≠ 0`). -/
def valLen (fb n : BitVec 64) : BitVec 64 := encLen (if n = 0 then 0 else fb) n

/-- The word `ld8 a` reads. -/
def ld8W (s : PanSemStateFiniteExact 64 σ) (a : BitVec 64) : BitVec 64 :=
  BitVec.ofNat 64 (byteOf s.memory s.be a)

/-- **Record consistency**: the payload word `_node_rlp_begin` stored at `fr + 40`. -/
def RC (s : PanSemStateFiniteExact 64 σ) (fr nd : BitVec 64) : Prop :=
  (rd s.memory nd = 3 → rd s.memory (fr + 40) = 0) ∧
  (rd s.memory nd = 2 → rd s.memory (fr + 40) =
    encLen (ld8W s (rd s.memory (fr + 24))) (rd s.memory (fr + 32))) ∧
  (rd s.memory nd = 1 → rd s.memory (fr + 40) =
    encLen (ld8W s (rd s.memory (fr + 24))) (rd s.memory (fr + 32)) +
      valLen (ld8W s (rd s.memory (nd + 48))) (rd s.memory (nd + 56)))

/-! ## The precondition and the callee hypotheses -/

/-- **The precondition of `_node_rlp_fill(node)`.** -/
def FillPre (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ node : BitVec 64, vs = [.val (.word node)] ∧ ∃ p : Ptrs, ptrsOf s = some p ∧ p.Ordered ∧
    ∃ Nd, TrieOK s Nd p.hp ∧ Nd node ∧ RecKind (rd s.memory node)

/-- The cells `_node_rlp_finish(·, nd)` may write besides keccak and fresh cells. -/
def CacheW (M : MemSafe.Mem) (nd a : BitVec 64) : Prop :=
  a = nd + 8 ∨ a = nd + 16 ∨ ∃ c : BitVec 64, heapBase ≤ c.toNat ∧ a = c + 24 ∧
    ((rd M nd = 2 ∧ c = rd M (nd + 48)) ∨ (rd M nd = 3 ∧ ∃ i : Nat, i < 16 ∧ c = rd M (slot nd i)))

/-- `a` lies outside the live heap `[heapBase, hp)` and the live scratch `[sp, scratchEnd)`
(fresh heap, frame memory, free scratch, or outside the arenas). Every cell unallocated at
entry (`¬ p.Allocated a`, the `SumCore` footprint) is `Unlive` (`unlive_of_unalloc`). -/
def Unlive (p : Ptrs) (a : Nat) : Prop := ¬ (heapBase ≤ a ∧ a < p.hp) ∧ ¬ (p.sp ≤ a ∧ a < scratchEnd)

theorem unlive_of_unalloc {p : Ptrs} {a : Nat} (h : ¬ p.Allocated a) : Unlive p a :=
  ⟨fun h1 => h (Or.inl h1), fun h3 => h (Or.inr (Or.inr h3))⟩

/-- The allocator facts both callees keep. -/
def AllocKeep (s t : PanSemStateFiniteExact 64 σ) (p : Ptrs) : Prop :=
  ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p.hp ≤ p'.hp ∧ p'.sp = p.sp ∧
    gword t gKst = gword s gKst ∧ gword t gKpad = gword s gKpad

/-- **Hypothesis on `_node_rlp_begin`.** -/
def BeginSpec (σ : Type) (X : Ctx 64) : Prop :=
  FunSpec σ X (nm "_node_rlp_begin") (fun vs s r t => ∀ v, r = .returned v →
    ∀ (fr nd : BitVec 64) (p : Ptrs), vs = [.val (.word fr), .val (.word nd)] →
      ptrsOf s = some p → p.Ordered → heapEnd ≤ fr.toNat → fr.toNat + 48 ≤ scratchEnd →
      (∃ Nd, TrieOK s Nd p.hp ∧ Nd nd ∧ RecKind (rd s.memory nd)) →
      AllocKeep s t p ∧
        (∀ a, t.memory a ≠ s.memory a → a = fr + 24 ∨ a = fr + 32 ∨ a = fr + 40 ∨
          Unlive p a.toNat) ∧
        RC t fr nd ∧
        (rd t.memory nd ≠ 3 → ∃ p' : Ptrs, ptrsOf t = some p' ∧
          p.hp ≤ (rd t.memory (fr + 24)).toNat ∧ (rd t.memory (fr + 24)).toNat < p'.hp))

/-- **Hypothesis on `_node_rlp_finish`.** -/
def FinishSpec (σ : Type) (X : Ctx 64) : Prop :=
  FunSpec σ X (nm "_node_rlp_finish") (fun vs s r t => ∀ v, r = .returned v →
    ∀ (fr nd : BitVec 64) (p : Ptrs), vs = [.val (.word fr), .val (.word nd)] →
      ptrsOf s = some p → p.Ordered →
      (∃ Nd, TrieOK s Nd p.hp ∧ Nd nd ∧ RecKind (rd s.memory nd)) → RC s fr nd →
      (rd s.memory nd ≠ 3 → heapBase ≤ (panByteAlignHOL (rd s.memory (fr + 24))).toNat ∧
        (panByteAlignHOL (rd s.memory (fr + 24))).toNat < p.hp) →
      AllocKeep s t p ∧
        ∀ a, t.memory a ≠ s.memory a → CacheW s.memory nd a ∨ KBuf s a ∨ Unlive p a.toNat)

/-! ## Arithmetic of node cells -/

theorem toNat_add_k {a : BitVec 64} {k : Nat} (h : a.toNat + k < 2 ^ 64) :
    (a + BitVec.ofNat 64 k).toNat = a.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (show k < 2 ^ 64 by omega), Nat.mod_eq_of_lt h]

theorem heapEnd_lt' : heapEnd < 2 ^ 64 := by unfold heapEnd; decide

theorem slot_toNat {a : BitVec 64} {i : Nat} (h : a.toNat + 176 ≤ heapEnd) (hi : i < 16) :
    (slot a i).toNat = a.toNat + (32 + 8 * i) := by
  unfold slot; have := heapEnd_lt'; exact toNat_add_k (by omega)

theorem cacheCell_toNat {a x : BitVec 64} (ha : a.toNat + 32 ≤ heapEnd) (h : CacheCell a x) :
    a.toNat + 8 ≤ x.toNat ∧ x.toNat + 8 ≤ a.toNat + 32 := by
  have := heapEnd_lt'
  rcases h with rfl | rfl | rfl
  · rw [show a + 8 = a + BitVec.ofNat 64 8 from rfl, toNat_add_k (by omega)]; omega
  · rw [show a + 16 = a + BitVec.ofNat 64 16 from rfl, toNat_add_k (by omega)]; omega
  · rw [show a + 24 = a + BitVec.ofNat 64 24 from rfl, toNat_add_k (by omega)]; omega

/-- An offset cell of a node, other than a cache cell, is a structure cell. -/
theorem structCell_off {M : MemSafe.Mem} {a : BitVec 64} {k : Nat}
    (ha : a.toNat + nsz (rd M a) ≤ heapEnd) (hk : k < nsz (rd M a)) (h8 : k ≠ 8) (h16 : k ≠ 16)
    (h24 : k ≠ 24) : StructCell M a (a + BitVec.ofNat 64 k) := by
  have := heapEnd_lt'
  have := nsz_ge (rd M a)
  have hk' := toNat_add_k (a := a) (k := k) (by omega)
  refine ⟨⟨by omega, by omega⟩, ?_⟩
  intro hc
  rcases hc with e | e | e
  · have := congrArg BitVec.toNat e
    rw [hk', show a + 8 = a + BitVec.ofNat 64 8 from rfl, toNat_add_k (by omega)] at this; omega
  · have := congrArg BitVec.toNat e
    rw [hk', show a + 16 = a + BitVec.ofNat 64 16 from rfl, toNat_add_k (by omega)] at this; omega
  · have := congrArg BitVec.toNat e
    rw [hk', show a + 24 = a + BitVec.ofNat 64 24 from rfl, toNat_add_k (by omega)] at this; omega

theorem structCell_base {M : MemSafe.Mem} {a : BitVec 64} (ha : a.toNat + nsz (rd M a) ≤ heapEnd) :
    StructCell M a a := by
  have h := structCell_off (k := 0) ha (by have := nsz_ge (rd M a); omega) (by decide) (by decide)
    (by decide)
  simpa using h

/-! ## Framing the trie facts -/

/-- The structure cells of the nodes of `Nd` agree. -/
def SameStruct (Nd : BitVec 64 → Prop) (M M' : MemSafe.Mem) : Prop :=
  ∀ a, Nd a → ∀ x, StructCell M a x → M' x = M x

theorem rd_eq {M M' : MemSafe.Mem} {x : BitVec 64} (h : M' x = M x) : rd M' x = rd M x := by
  unfold rd; rw [h]

theorem trieOK_mono {s : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop} {HP HP' : Nat}
    (hle : HP ≤ HP') (h : TrieOK s Nd HP) : TrieOK s Nd HP' := by
  obtain ⟨hs, hd, ⟨ks, kp, h1, h2, h3, h4, h5, h6, h7, h8, h9⟩, hv⟩ := h
  refine ⟨fun a ha => ?_, hd, ⟨ks, kp, h1, h2, h3, h4, h5, by omega, h7, by omega, h9⟩,
    fun a ha => ?_⟩
  · obtain ⟨e1, e2, e3⟩ := hs a ha; exact ⟨e1, by omega, e3⟩
  · obtain ⟨v1, v2⟩ := hv a ha
    refine ⟨fun hk hl => ?_, fun hk hl => ?_⟩
    · obtain ⟨a1, a2⟩ := v1 hk hl; exact ⟨a1, by omega⟩
    · obtain ⟨a1, a2, a3⟩ := v2 hk hl; exact ⟨a1, by omega, a3⟩

theorem kbuf_congr {s t : PanSemStateFiniteExact 64 σ} (h1 : gword t gKst = gword s gKst)
    (h2 : gword t gKpad = gword s gKpad) (x : BitVec 64) : KBuf t x ↔ KBuf s x := by
  unfold KBuf; rw [h1, h2]

/-- **The trie facts survive** any change that keeps the structure cells and the keccak
globals. -/
theorem trieOK_frame {s t : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop} {HP : Nat}
    (hHP : HP ≤ heapEnd) (h : TrieOK s Nd HP) (hS : SameStruct Nd s.memory t.memory)
    (hk1 : gword t gKst = gword s gKst) (hk2 : gword t gKpad = gword s gKpad) :
    TrieOK t Nd HP := by
  obtain ⟨hsh, hd, ⟨ks, kp, h1, h2, h3, h4, h5, h6, h7, h8, h9⟩, hv⟩ := h
  have hb : ∀ a, Nd a → a.toNat + nsz (rd s.memory a) ≤ heapEnd := fun a ha => by
    have := (hsh a ha).2.1; omega
  have hk : ∀ a, Nd a → rd t.memory a = rd s.memory a := fun a ha =>
    rd_eq (hS a ha a (structCell_base (hb a ha)))
  have hoff : ∀ a, Nd a → ∀ k : Nat, k < nsz (rd s.memory a) → k ≠ 8 → k ≠ 16 → k ≠ 24 →
      rd t.memory (a + BitVec.ofNat 64 k) = rd s.memory (a + BitVec.ofNat 64 k) :=
    fun a ha k h1 h2 h3 h4 => rd_eq (hS a ha _ (structCell_off (hb a ha) h1 h2 h3 h4))
  refine ⟨fun a ha => ?_, fun a b ha hb' hab => ?_, ⟨ks, kp, by rw [← h1]; exact hk1,
    by rw [← h2]; exact hk2, h3, h4, h5, h6, h7, h8, fun a ha => ?_⟩, fun a ha => ?_⟩
  · obtain ⟨e1, e2, e3, e4, e5⟩ := hsh a ha
    rw [hk a ha]
    refine ⟨e1, e2, e3, fun h2 => ?_, fun h3 i hi => ?_⟩
    · have := hoff a ha 48 (by rw [h2, nsz_2]; omega) (by decide) (by decide) (by decide)
      rw [show a + 48 = a + BitVec.ofNat 64 48 from rfl, this]; exact e4 h2
    · have := hoff a ha (32 + 8 * i) (by rw [h3, nsz_3]; omega) (by omega) (by omega) (by omega)
      unfold slot; rw [this]; exact e5 h3 i hi
  · rw [hk a ha, hk b hb']; exact hd a b ha hb' hab
  · rw [hk a ha]; exact h9 a ha
  · obtain ⟨v1, v2⟩ := hv a ha
    have hkb := kbuf_congr (s := s) (t := t) hk1 hk2
    rw [hk a ha]
    refine ⟨fun h1' => ?_, fun h3' => ?_⟩
    · have e48 := hoff a ha 48 (by rw [h1', nsz_1]; omega) (by decide) (by decide) (by decide)
      have e56 := hoff a ha 56 (by rw [h1', nsz_1]; omega) (by decide) (by decide) (by decide)
      rw [show a + 48 = a + BitVec.ofNat 64 48 from rfl, show a + 56 = a + BitVec.ofNat 64 56 from rfl,
        e48, e56]
      exact v1 h1'
    · have e160 := hoff a ha 160 (by rw [h3', nsz_3]; omega) (by decide) (by decide) (by decide)
      have e168 := hoff a ha 168 (by rw [h3', nsz_3]; omega) (by decide) (by decide) (by decide)
      rw [show a + 160 = a + BitVec.ofNat 64 160 from rfl,
        show a + 168 = a + BitVec.ofNat 64 168 from rfl, e160, e168]
      intro hl
      obtain ⟨a1, a2, a3, a4⟩ := v2 h3' hl
      exact ⟨a1, a2, a3, by rw [hkb]; exact a4⟩

/-! ## Safe writes -/

/-- A cell whose change keeps the loop's facts: a cache cell of a node, a keccak cell, a null
page cell, a cell of `[HP, lo)` (fresh heap, frame memory, fresh scratch), or a cell at or
above `hi`. -/
def SafeW (s : PanSemStateFiniteExact 64 σ) (Nd : BitVec 64 → Prop) (HP lo hi : Nat)
    (x : BitVec 64) : Prop :=
  (∃ b, Nd b ∧ CacheCell b x) ∨ KBuf s x ∨ x.toNat < heapBase ∨ (HP ≤ x.toNat ∧ x.toNat < lo) ∨
    hi ≤ x.toNat

/-- What safe writes keep: the structure cells, the cells of `[lo, hi)` and of `[HP0, HP)`. -/
theorem safe_keeps {s t : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop}
    {HP0 HP lo hi : Nat} (h : TrieOK s Nd HP0) (h0 : HP0 ≤ HP) (h1 : HP ≤ heapEnd)
    (h2 : heapEnd ≤ lo) (h3 : heapEnd ≤ hi)
    (hw : ∀ x, t.memory x ≠ s.memory x → SafeW s Nd HP lo hi x) :
    SameStruct Nd s.memory t.memory ∧
      (∀ x : BitVec 64, lo ≤ x.toNat → x.toNat < hi → t.memory x = s.memory x) ∧
      (∀ x : BitVec 64, HP0 ≤ x.toNat → x.toNat < HP → t.memory x = s.memory x) := by
  obtain ⟨hsh, hd, ⟨ks, kp, k1, k2, k3, k4, k5, k6, k7, k8, k9⟩, -⟩ := h
  have hcb : ∀ b x, Nd b → CacheCell b x → b.toNat + 8 ≤ x.toNat ∧ x.toNat + 8 ≤ b.toNat + 32 ∧
      b.toNat + 32 ≤ HP0 := fun b x hb hc => by
    have e := (hsh b hb).2.1
    have := nsz_ge (rd s.memory b)
    have := cacheCell_toNat (a := b) (x := x) (by omega) hc
    exact ⟨this.1, this.2, by omega⟩
  have hkb : ∀ x, KBuf s x → heapBase ≤ x.toNat ∧ x.toNat < HP0 := fun x hx => by
    rcases hx with ⟨w, hw, h1, h2⟩ | ⟨w, hw, h1, h2⟩
    · rw [k1] at hw; cases hw; omega
    · rw [k2] at hw; cases hw; omega
  have hbase : heapBase < heapEnd := by unfold heapBase heapEnd; decide
  refine ⟨fun a ha x hx => ?_, fun x hx1 hx2 => ?_, fun x hx1 hx2 => ?_⟩
  · by_contra hne
    obtain ⟨⟨hx1, hx2⟩, hnc⟩ := hx
    have ha' := hsh a ha
    rcases hw x hne with ⟨b, hb, hc⟩ | hk | hlt | ⟨hl1, hl2⟩ | hhi
    · by_cases hab : a = b
      · subst hab; exact hnc hc
      · have := hcb b x hb hc
        have := nsz_ge (rd s.memory b)
        rcases hd a b ha hb hab with e | e <;> omega
    · have := hkb x hk
      rcases hk with ⟨w, hw', e1, e2⟩ | ⟨w, hw', e1, e2⟩
      · rw [k1] at hw'; cases hw'; rcases (k9 a ha).1 with e | e <;> omega
      · rw [k2] at hw'; cases hw'; rcases (k9 a ha).2 with e | e <;> omega
    · omega
    · omega
    · omega
  · by_contra hne
    rcases hw x hne with ⟨b, hb, hc⟩ | hk | hlt | ⟨hl1, hl2⟩ | hhi
    · have := hcb b x hb hc; omega
    · have := hkb x hk; omega
    · omega
    · omega
    · omega
  · by_contra hne
    rcases hw x hne with ⟨b, hb, hc⟩ | hk | hlt | ⟨hl1, hl2⟩ | hhi
    · have := hcb b x hb hc; omega
    · have := hkb x hk; omega
    · omega
    · omega
    · omega

/-- Cells outside the live heap and scratch of `p` are safe (`HP = p.hp`, `p.sp ≤ lo`,
`hi ≤ scratchEnd`). -/
theorem safe_of_unalloc {s : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop} {p : Ptrs}
    {lo hi : Nat} (hord : p.Ordered) (hlo : p.sp ≤ lo) (hhi : hi ≤ scratchEnd) {x : BitVec 64}
    (h : Unlive p x.toNat) : SafeW s Nd p.hp lo hi x := by
  unfold Unlive at h
  simp only [not_and, not_lt] at h
  obtain ⟨g1, g3⟩ := h
  obtain ⟨o1, o2, o3, o4, o5, -⟩ := hord
  right; right
  by_cases h1 : x.toNat < heapBase
  · exact Or.inl h1
  · right
    by_cases h2 : x.toNat < heapEnd
    · exact Or.inl ⟨by omega, by omega⟩
    · by_cases h3 : x.toNat < p.sp
      · exact Or.inl ⟨by omega, by omega⟩
      · exact Or.inr (by omega)

end InitECandidate.Solver.Spec.Mpt
