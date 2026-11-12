import InitECandidate.Solver.MemSafe.Frames.Release
import InitECandidate.Solver.MemSafe.Hooks.Laws

/-!
# The release law for the guest hook family

**`relCfg_guest`**: `RelCfg Types.guestC guestHooks tEV refG`. The dependency targets of the
guest hooks (`refG`) are: for an EV record, its stack and memory (slots 1 / 3); for a table
header, the objects it owns (itself, a heap array of type `tOwn`, or the scratch array `tHTAs`
directly below it) and, for `tHTt20` tables, the leaf values (`tHTh32` headers, heap).
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

theorem adjTys_guest : adjTys = [tHTAs, tLSTAs] := rfl

theorem lookup_mem_gt : ∀ {l : List (MlS × FK)} {g : MlS} {k : FK}, l.lookup g = some k → (g, k) ∈ l
  | [], _, _, h => by simp [List.lookup] at h
  | (a, b) :: l, g, k, h => by
      unfold List.lookup at h
      by_cases hga : g = a
      · subst hga
        simp only [BEq.rfl, Option.some.injEq] at h
        subst h
        exact List.mem_cons_self
      · have hb : (g == a) = false := by simp [hga]
        rw [hb] at h
        exact List.mem_cons_of_mem _ (lookup_mem_gt h)

theorem globHeap_guest : ∀ g k, guestC.GT.lookup g = some k → g ≠ nmEv → g ≠ nmCC →
    fkHeap guestC k = true := by
  intro g k hk h1 h2
  have hmem : (g, k) ∈ guestC.GT := lookup_mem_gt hk
  have key : ∀ q ∈ guestC.GT, q.1 ≠ nmEv → q.1 ≠ nmCC → fkHeap guestC q.2 = true := by decide
  exact key (g, k) hmem h1 h2

/-- The possible value kinds of a table header type. -/
def HtValOK (x : Option FK) : Prop :=
  x = none ∨ x = some .scalar ∨ ∃ t', x = some (.ptr t') ∧ (guestC.ty t').region = .heap

theorem htValOK_ite {c : Prop} [Decidable c] {a b : Option FK} (ha : HtValOK a) (hb : HtValOK b) :
    HtValOK (if c then a else b) := by
  split
  · exact ha
  · exact hb

/-- One branch at a time: `split_ifs` over all of `htVal`'s branches exceeds the heartbeat limit. -/
theorem htVal_ok (t : Nat) : HtValOK (htVal t) := by
  unfold htVal
  repeat (refine htValOK_ite (by first | exact Or.inl rfl | exact Or.inr (Or.inl rfl) |
    exact Or.inr (Or.inr ⟨_, rfl, rfl⟩)) ?_)
  exact Or.inl rfl

/-- The value kinds of the guest tables target heap headers. -/
theorem valK_heap {t : Nat} (h : valK t ≠ .scalar) : ∃ t', valK t = .ptr t' ∧ (guestC.ty t').region = .heap := by
  unfold valK at *
  rcases htVal_ok t with h1 | h1 | ⟨t', h1, h2⟩ <;> rw [h1] at h ⊢
  · exact absurd rfl h
  · exact absurd rfl h
  · exact ⟨t', rfl, h2⟩

theorem relCfg_guest : RelCfg guestC (guestHooks (σ := σ)) tEV refG := by
  refine ⟨guestHooks_shrinkR, heapPtrs_guest, globHeap_guest, ?_⟩
  intro Γ s o b p hL ho hw href x hx hxb
  have hGo := gamOK_of_layout hL
  cases hk : hkOf o.ty with
  | ev =>
      simp only [refG, hk] at href
      right; right; left
      refine ⟨hkOf_ev hk, ?_⟩
      rcases href with h | h
      · left; rw [h]; rfl
      · right; rw [h]; rfl
  | tab =>
      simp only [refG, hk] at href
      rw [guestHooks_wf, gwf_tab hk] at hw
      rcases href with ⟨y, hy, hyb, hown, -⟩ | ⟨hsc, hlv⟩
      · obtain rfl : y = x := base_unique hL hy hx (hyb.trans hxb.symm)
        rcases hown with h | h | ⟨h1, h2⟩
        · right; left; exact h
        · left; rw [h]; exact own_region (tOwn_ge _)
        · right; right; right; exact ⟨by rw [h1]; simp [adjTys], h2⟩
      · obtain ⟨t', ht', hr⟩ := valK_heap hsc
        have hf := hw.2.2.2.2.1 b hlv
        rw [ht'] at hf
        obtain ⟨z, hz, hzb, hzt⟩ := hf
        obtain rfl : z = x := base_unique hL hz hx (hzb.trans hxb.symm)
        left; rw [hzt]; exact hr
  | none => simp [refG, hk] at href

end InitECandidate.Solver.MemSafe.Frames
