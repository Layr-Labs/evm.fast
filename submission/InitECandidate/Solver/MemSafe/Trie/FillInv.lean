import InitECandidate.Solver.MemSafe.Trie.FillNum
import InitECandidate.Solver.MemSafe.Trie.BeginClen
import InitECandidate.Solver.MemSafe.Trie.Finish

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# The loop invariant of `_node_rlp_fill`, extended

`FInvX = FInv` plus `LenStat` (nibble / value lengths of the nodes are at most `2^32`) and `ChainB`: the compact
length of every record of the chain is `< 2^33` (what `finish_numeric` needs).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- The compact lengths of the first `d` records of a chain. -/
def ChainB (M : MemSafe.Mem) : Nat → BitVec 64 → Prop
  | 0, _ => True
  | d + 1, r => (rd M (r + 32)).toNat < 2 ^ 33 ∧ ChainB M d (rd M r)

theorem chainB_frame {s : State σ} {Nd : BitVec 64 → Prop} {HP0 HP hi : Nat} {M' : MemSafe.Mem}
    (hhi : hi ≤ scratchEnd) :
    ∀ d lo nt r, ChainF s Nd HP0 HP hi d lo nt r →
      (∀ x : BitVec 64, lo ≤ x.toNat → x.toNat < hi → M' x = s.memory x) →
      ChainB s.memory d r → ChainB M' d r
  | 0, _, _, _, _, _, _ => trivial
  | d + 1, lo, nt, r, h, hsame, hb => by
      obtain ⟨h0, h1, h2, -, h4⟩ := h
      have c0 : lo ≤ (r + BitVec.ofNat 64 0).toNat ∧ (r + BitVec.ofNat 64 0).toNat < hi :=
        rec_cell h1 h2 hhi (by omega)
      have c32 : lo ≤ (r + BitVec.ofNat 64 32).toNat ∧ (r + BitVec.ofNat 64 32).toNat < hi :=
        rec_cell h1 h2 hhi (by omega)
      have e0 : rd M' r = rd s.memory r := by
        have := rd_eq (hsame (r + BitVec.ofNat 64 0) c0.1 c0.2)
        simpa using this
      have e32 : rd M' (r + 32) = rd s.memory (r + 32) :=
        rd_eq (hsame (r + BitVec.ofNat 64 32) c32.1 c32.2)
      refine ⟨by rw [e32]; exact hb.1, ?_⟩
      rw [e0]
      exact chainB_frame hhi d (r.toNat + 48) true _ h4 (fun x hx1 hx2 => hsame x (by omega) hx2) hb.2

/-- Changing only the progress cell of the head record keeps the lengths. -/
theorem chainB_set16 {s : State σ} {Nd : BitVec 64 → Prop} {HP0 HP hi : Nat} {lo : Nat} {nt : Bool}
    {d : Nat} {T : BitVec 64} {M' : MemSafe.Mem} {v : BitVec 64}
    (hhi : hi ≤ scratchEnd) (h : ChainF s Nd HP0 HP hi (d + 1) lo nt T)
    (hM : M' = Spec.Inv.upd s.memory (T + 16) v) (hb : ChainB s.memory (d + 1) T) :
    ChainB M' (d + 1) T := by
  obtain ⟨h0, h1, h2, -, h4⟩ := h
  have := Spec.Mpt.scratchEnd_lt
  have t16 : (T + 16).toNat = T.toNat + 16 := toNat_add_k (k := 16) (by omega)
  have t32 : (T + 32).toNat = T.toNat + 32 := toNat_add_k (k := 32) (by omega)
  refine ⟨?_, ?_⟩
  · rw [hM, rd_upd', if_neg]
    · exact hb.1
    · intro e; have := congrArg BitVec.toNat e; omega
  · have e0 : rd M' T = rd s.memory T := by
      rw [hM, rd_upd', if_neg]
      intro e; have := congrArg BitVec.toNat e; omega
    rw [e0]
    refine chainB_frame hhi d (T.toNat + 48) true _ h4 (fun x hx1 hx2 => ?_) hb.2
    rw [hM]; unfold Spec.Inv.upd
    rw [if_neg]
    intro e; have := congrArg BitVec.toNat e; omega

/-- `LenStat` survives any change that keeps the cells below `heapEnd`. -/
theorem lenStat_of_agree {Nd : BitVec 64 → Prop} {HP0 : Nat} {s t : State σ}
    (hsh : NdShape s.memory Nd HP0) (hHP : HP0 ≤ heapEnd)
    (h : ∀ x : BitVec 64, x.toNat < heapEnd → t.memory x = s.memory x) (hL : LenStat Nd s) :
    LenStat Nd t := by
  intro a ha
  obtain ⟨hb, hsz, hk3, -, -⟩ := hsh a ha
  obtain ⟨l1, l2, l3⟩ := hL a ha
  have hE := heapEnd_lt'
  have hnsz := nsz_ge (rd s.memory a)
  have hk : rd t.memory a = rd s.memory a := rd_eq (h a (by omega))
  have off : ∀ k : Nat, k < nsz (rd s.memory a) → rd t.memory (a + BitVec.ofNat 64 k) =
      rd s.memory (a + BitVec.ofNat 64 k) := fun k hk' =>
    rd_eq (h _ (by rw [toNat_add_k (by omega)]; omega))
  rw [hk]
  refine ⟨fun hh => ?_, fun hh => ?_, fun hh => ?_⟩
  · have hlt : 40 < nsz (rd s.memory a) := by
      rcases hh with e | e <;> rw [e] <;> decide
    have := l1 hh
    rw [show a + 40 = a + BitVec.ofNat 64 40 from rfl] at this ⊢
    rw [off 40 hlt]; exact this
  · have hlt : 56 < nsz (rd s.memory a) := by rw [hh]; decide
    have := l2 hh
    rw [show a + 56 = a + BitVec.ofNat 64 56 from rfl] at this ⊢
    rw [off 56 hlt]; exact this
  · have hlt : 168 < nsz (rd s.memory a) := by rw [hh]; decide
    have := l3 hh
    rw [show a + 168 = a + BitVec.ofNat 64 168 from rfl] at this ⊢
    rw [off 168 hlt]; exact this

/-- **The extended loop invariant.** -/
def FInvX (Nd : BitVec 64 → Prop) (HP0 S0 : Nat) (t : State σ) : Prop :=
  ∃ p : Ptrs, ptrsOf t = some p ∧ p.Ordered ∧ HP0 ≤ p.hp ∧ heapBase ≤ HP0 ∧ p.sp ≤ S0 ∧
    S0 ≤ scratchEnd ∧ TrieOK t Nd HP0 ∧ LenStat Nd t ∧
    ∃ (T : BitVec 64) (d : Nat), t.locals.lookup (nm "top") = some (.val (.word T)) ∧
      ChainF t Nd HP0 p.hp S0 d p.sp false T ∧ ChainB t.memory d T

theorem finv_of_finvX {Nd : BitVec 64 → Prop} {HP0 S0 : Nat} {t : State σ} (h : FInvX Nd HP0 S0 t) :
    FInv Nd HP0 S0 t := by
  obtain ⟨p, hp, ho, h1, h2, h3, h4, htr, -, T, d, hT, hch, -⟩ := h
  exact ⟨p, hp, ho, h1, h2, h3, h4, htr, T, d, hT, hch⟩

/-- The invariant reads memory, globals, `be` and `top`. -/
theorem finvX_congr {Nd : BitVec 64 → Prop} {HP0 S0 : Nat} {s t : State σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hbe : t.be = s.be)
    (htop : t.locals.lookup (nm "top") = s.locals.lookup (nm "top")) (h : FInvX Nd HP0 S0 s) :
    FInvX Nd HP0 S0 t ∧ fMu t = fMu s := by
  obtain ⟨p, hp, ho, h1, h2, h3, h4, htr, hL, T, d, hT, hch, hB⟩ := h
  have hp' : ptrsOf t = some p := by rw [ptrsOf_frame hg]; exact hp
  have hhp := ho.2.1
  refine ⟨⟨p, hp', ho, h1, h2, h3, h4, trieOK_of_eq (by omega) hm hg htr, ?_, T, d,
    by rw [htop]; exact hT, chainF_of_eq hm hbe hch, by rw [hm]; exact hB⟩, ?_⟩
  · refine lenStat_of_agree (s := s) htr.1 (by omega) (fun x _ => by rw [hm]) hL
  · unfold fMu
    rw [spOf_of hp, spOf_of hp', hm, wl_congr htop]

/-- `LenStat` survives any change that keeps the structure cells of the nodes. -/
theorem lenStat_of_struct {Nd : BitVec 64 → Prop} {HP0 : Nat} {s t : State σ}
    (hsh : NdShape s.memory Nd HP0) (hHP : HP0 ≤ heapEnd)
    (hS : SameStruct Nd s.memory t.memory) (hL : LenStat Nd s) : LenStat Nd t := by
  intro a ha
  obtain ⟨hb, hsz, hk3, -, -⟩ := hsh a ha
  obtain ⟨l1, l2, l3⟩ := hL a ha
  have hE := heapEnd_lt'
  have hnsz := nsz_ge (rd s.memory a)
  have hbd : a.toNat + nsz (rd s.memory a) ≤ heapEnd := by omega
  have hk : rd t.memory a = rd s.memory a := rd_eq (hS a ha a (structCell_base hbd))
  have off : ∀ k : Nat, k < nsz (rd s.memory a) → k ≠ 8 → k ≠ 16 → k ≠ 24 →
      rd t.memory (a + BitVec.ofNat 64 k) = rd s.memory (a + BitVec.ofNat 64 k) :=
    fun k hk' h8 h16 h24 => rd_eq (hS a ha _ (structCell_off hbd hk' h8 h16 h24))
  rw [hk]
  refine ⟨fun hh => ?_, fun hh => ?_, fun hh => ?_⟩
  · have hlt : 40 < nsz (rd s.memory a) := by
      rcases hh with e | e <;> rw [e] <;> decide
    have := l1 hh
    rw [show a + 40 = a + BitVec.ofNat 64 40 from rfl] at this ⊢
    rw [off 40 hlt (by decide) (by decide) (by decide)]; exact this
  · have hlt : 56 < nsz (rd s.memory a) := by rw [hh]; decide
    have := l2 hh
    rw [show a + 56 = a + BitVec.ofNat 64 56 from rfl] at this ⊢
    rw [off 56 hlt (by decide) (by decide) (by decide)]; exact this
  · have hlt : 168 < nsz (rd s.memory a) := by rw [hh]; decide
    have := l3 hh
    rw [show a + 168 = a + BitVec.ofNat 64 168 from rfl] at this ⊢
    rw [off 168 hlt (by decide) (by decide) (by decide)]; exact this

theorem ptrsOf_sp {s : State σ} {p : Ptrs} (h : ptrsOf s = some p) :
    ∃ w, gword s gScratch = some w ∧ w.toNat = p.sp := by
  unfold ptrsOf at h
  split at h
  · rename_i h1 f1 p1 e1 e2 e3
    cases h
    exact ⟨p1, e3, rfl⟩
  · cases h

theorem sp_eq_of_glob {s t : State σ} {p p' : Ptrs} (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p')
    (h : t.globals.lookup gScratch = s.globals.lookup gScratch) : p'.sp = p.sp := by
  obtain ⟨w, hw, e⟩ := ptrsOf_sp hp
  obtain ⟨w', hw', e'⟩ := ptrsOf_sp hp'
  have hg : gword t gScratch = gword s gScratch := by unfold gword; rw [h]
  rw [hg, hw] at hw'
  cases hw'
  omega

/-- A finish footprint is a step footprint. -/
theorem stepW_of_fEx {S0 : Nat} {Nd : BitVec 64 → Prop} {HP0 : Nat} {s t : State σ} {p : Ptrs} {N : BitVec 64}
    (hsh : NdShape s.memory Nd HP0) (hN : Nd N) (hp : ptrsOf s = some p) (h : FEx s p N t) :
    StepW S0 Nd s t := by
  obtain ⟨hg, p', hp', hord', hhp', hw⟩ := h
  refine ⟨p, p', hp, hp', hord', hhp', ?_, fun g h1 h2 => hg g h1, fun a ha => ?_⟩
  · have := sp_eq_of_glob hp hp' (hg gScratch (by decide)); omega
  · have hh := hord'.2.1
    rcases hw a ha with ⟨h1, h2⟩ | h | h
    · exact Or.inr (Or.inr (Or.inl ⟨h1, by omega⟩))
    · exact Or.inl (cacheW_safe hsh hN h)
    · exact Or.inr (Or.inl h)

end InitECandidate.Solver.MemSafe.Trie
