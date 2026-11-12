import InitECandidate.Solver.MemSafe.LogDefs

/-!
# The array cells of the log lists (package L)

`LogW Γ Γ' hp' m m'`: every cell of every list array of `Γ` is unchanged or holds a log record in range
afterwards. It is what the loop of `incorporate_child_on_success` needs to keep reading the child's
elements while it appends to the parent's list. `logW_trans`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe.Types

/-- `a` is a cell of a list array object of `Γ`. -/
def ListArrCell (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ x ∈ Γ, (x.ty = tLSTAh ∨ x.ty = tLSTAs) ∧ ∃ k, x.HasSlot k ∧ a = x.cell k

/-- **Every list array cell is unchanged or now holds a record in range.** -/
def LogW (Γ Γ' : Gam) (hp' : Nat) (m m' : Mem) : Prop :=
  ∀ a, ListArrCell Γ a → rd m' a = rd m a ∨ LogRecF Γ' hp' m' (rd m' a)

theorem listArrCell_ext {Γ Γ' : Gam} (hext : Ext Γ Γ') {a : BitVec 64} (h : ListArrCell Γ a) :
    ListArrCell Γ' a := by
  obtain ⟨x, hx, ht, k, hk, rfl⟩ := h
  obtain ⟨x', hx', hb, ht', hs⟩ := hext x hx
  refine ⟨x', hx', by rw [ht']; exact ht, k, by unfold Obj.HasSlot at hk ⊢; omega, ?_⟩
  unfold Obj.cell; rw [hb]

theorem logW_trans {Γ Γ1 Γ2 : Gam} {p1 p2 : Ptrs} {m m1 m2 : Mem} (hord1 : p1.Ordered)
    (hord2 : p2.Ordered) (hm : p1.Mono p2) (hext1 : Ext Γ Γ1) (hext2 : Ext Γ1 Γ2)
    (hk : LogKeep Γ1 m1 m2) (h1 : LogW Γ Γ1 p1.hp m m1) (h2 : LogW Γ1 Γ2 p2.hp m1 m2) : LogW Γ Γ2 p2.hp m m2 := by
  intro a ha
  have ha1 := listArrCell_ext hext1 ha
  rcases h2 a ha1 with he | hr
  · rcases h1 a ha with he1 | hr1
    · exact Or.inl (he.trans he1)
    · exact Or.inr (he ▸ logRecF_step hm hext2 hk hr1)
  · exact Or.inr hr

theorem logW_refl {Γ Γ' : Gam} {hp' : Nat} {m : Mem} : LogW Γ Γ' hp' m m :=
  fun _ _ => Or.inl rfl


/-- `a` is a cell of a list header (slots 0 and 1) of `Γ`. -/
def ListHdrCell (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ L ∈ Γ, HdrTy L.ty ∧ ∃ k, k < 2 ∧ L.HasSlot k ∧ a = L.cell k

/-- `a` is a cell of a list header or of a list array of `Γ`. -/
def ListCell (Γ : Gam) (a : BitVec 64) : Prop := ListHdrCell Γ a ∨ ListArrCell Γ a

theorem listCell_ext {Γ Γ' : Gam} (hext : Ext Γ Γ') {a : BitVec 64} (h : ListCell Γ a) :
    ListCell Γ' a := by
  rcases h with ⟨L, hL, ht, k, hk, hks, rfl⟩ | h
  · obtain ⟨L', hL', hb, ht', hs⟩ := hext L hL
    refine Or.inl ⟨L', hL', by rw [ht']; exact ht, k, hk, by unfold Obj.HasSlot at hks ⊢; omega, ?_⟩
    unfold Obj.cell; rw [hb]
  · exact Or.inr (listArrCell_ext hext h)

/-- A step that leaves every list array cell alone satisfies `LogW`. -/
theorem logW_of_keep {Γ Γ' : Gam} {hp' : Nat} {m m' : Mem}
    (h : ∀ a, ListArrCell Γ a → rd m' a = rd m a) : LogW Γ Γ' hp' m m' :=
  fun a ha => Or.inl (h a ha)

end InitECandidate.Solver.MemSafe
