import InitECandidate.Solver.Spec.Inv.HtabInsCtx

/-!
# Insertion: children and walks in the new tree

From `InsV` and `InsCtx`: the children of an old live internal node are the old ones with `n`
replaced by `ni` (`ins_child`), `ni`'s children are `nl` (on the search key's bit `b`) and `n`
(`ins_child_ni`), the root is `fixI n ni` of the old root (`ins_root`). Walks:

* `ins_walk_old`: a walk of the entry table ends at the same leaf in the new table, entering `ni`
  where it entered `n` (an old leaf under `n` has bit `!b` at `D`, `InsCtx.under`);
* `ins_walk_new`: the search key's path from the root, followed in the new table, leads to `ni`
  and then to `nl`.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem fixI_n (n ni : BitVec 64) : fixI n ni n = ni := by unfold fixI; rw [if_pos rfl]
theorem fixI_ne {n ni x : BitVec 64} (h : x ≠ n) : fixI n ni x = x := by unfold fixI; rw [if_neg h]

section ins
variable {m0 m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
  {fl : List (BitVec 64)} {nl ni n p D val key ℓ : BitVec 64} {b : Bool}
variable (hsh : Shape m0 d be T L) (hv : InsV m0 m d be T fl nl ni n p D val key)
  (hc : InsCtx m0 d be T L nl ni n p D key ℓ b)
include hsh hv hc

theorem ins_le {i : BitVec 64} (hi : L i) : i.toNat ≤ CAP m0 T := live_le hsh hi
theorem ins_nenl {i : BitVec 64} (hi : L i) : i ≠ nl := fun e => hc.nll (e ▸ hi)
theorem ins_neni {i : BitVec 64} (hi : L i) : i ≠ ni := fun e => hc.nil (e ▸ hi)

theorem ins_kb : KB m T = KB m0 T := by unfold KB; rw [hv.e0]

theorem ins_kind {i : BitVec 64} (hi : L i) : KIND m T i = KIND m0 T i :=
  hv.kind i (ins_le hsh hv hc hi) (ins_nenl hsh hv hc hi) (ins_neni hsh hv hc hi)

theorem ins_dkb : D ≠ KB m0 T := fun e => by have := hc.dkb; rw [e] at this; omega

theorem ins_n0 : n ≠ 0 := live_ne0 hsh hc.ln

theorem ins_kn : KIND m T n = KIND m0 T n := ins_kind hsh hv hc hc.ln

/-- An internal live node with child `n` is `p`. -/
theorem ins_child_n {i : BitVec 64} (hi : L i) (hk : KIND m0 T i ≠ KB m0 T)
    (hch : LEFT m0 T i = n ∨ RIGHT m0 T i = n) : p ≠ 0 ∧ i = p := by
  obtain ⟨-, -, pL, pR, -⟩ := hsh.internal i hi hk
  have hpn : PAR m0 T n = i := by
    rcases hch with h | h
    · rw [← h]; exact pL
    · rw [← h]; exact pR
  rcases hc.pc with ⟨-, hnr⟩ | ⟨hp0, -, -, -, hpar, -⟩
  · have := (hsh.root_live (live_ne0 hsh hc.rl)).2
    rw [← hnr, hpn] at this
    exact absurd this (live_ne0 hsh hi)
  · exact ⟨hp0, hpn.symm.trans hpar⟩

/-- New children of an old live internal node. -/
theorem ins_child {i : BitVec 64} (hi : L i) (hk : KIND m0 T i ≠ KB m0 T) (c : Bool) :
    child m T i c = fixI n ni (child m0 T i c) := by
  have hle := ins_le hsh hv hc hi
  have h1 := ins_nenl hsh hv hc hi
  have h2 := ins_neni hsh hv hc hi
  obtain ⟨-, -, -, -, hLR, -⟩ := hsh.internal i hi hk
  cases c
  · show RIGHT m T i = fixI n ni (RIGHT m0 T i)
    rw [hv.right i hle h1 h2]
    by_cases h : p ≠ 0 ∧ i = p ∧ LEFT m0 T p ≠ n
    · rw [if_pos h]
      obtain ⟨hp0, rfl, hl⟩ := h
      have : RIGHT m0 T i = n := by
        rcases hc.pc with ⟨h0, -⟩ | ⟨-, -, -, -, -, h3 | h3⟩
        · exact absurd h0 hp0
        · exact absurd h3 hl
        · exact h3
      rw [this, fixI_n]
    · rw [if_neg h, fixI_ne]
      intro hr
      obtain ⟨hp0, rfl⟩ := ins_child_n hsh hv hc hi hk (Or.inr hr)
      apply h ⟨hp0, rfl, fun hl => hLR (hl.trans hr.symm)⟩
  · show LEFT m T i = fixI n ni (LEFT m0 T i)
    rw [hv.left i hle h1 h2]
    by_cases h : p ≠ 0 ∧ i = p ∧ LEFT m0 T p = n
    · rw [if_pos h]
      obtain ⟨-, rfl, hl⟩ := h
      rw [hl, fixI_n]
    · rw [if_neg h, fixI_ne]
      intro hl
      obtain ⟨hp0, rfl⟩ := ins_child_n hsh hv hc hi hk (Or.inl hl)
      exact h ⟨hp0, rfl, hl⟩

theorem ins_niLR : LEFT m T ni = (if b then nl else n) ∧ RIGHT m T ni = (if b then n else nl) := by
  obtain ⟨b0, hb0, h1, h2⟩ := hv.niLR
  rw [hc.bk] at hb0
  cases hb0
  exact ⟨h1, h2⟩

theorem ins_child_ni (c : Bool) : child m T ni c = if c = b then nl else n := by
  obtain ⟨h1, h2⟩ := ins_niLR hsh hv hc
  unfold child
  cases c <;> cases b <;> simp_all

theorem ins_ni0 : ni ≠ 0 := fun e => by have := hv.ni1; rw [e] at this; simp at this
theorem ins_nl0 : nl ≠ 0 := fun e => by have := hv.nl1; rw [e] at this; simp at this

/-- The new root. -/
theorem ins_root : hdr m T 56 = fixI n ni (hdr m0 T 56) := by
  rw [hv.e56]
  rcases hc.pc with ⟨hp0, hnr⟩ | ⟨hp0, -, -, -, hpar, -⟩
  · rw [if_pos hp0, ← hnr, fixI_n]
  · rw [if_neg hp0, fixI_ne]
    intro hr
    have := (hsh.root_live (live_ne0 hsh hc.rl)).2
    rw [hr, hpar] at this
    exact hp0 this

/-- Entering `ni` on a key with bit `c` at `D`. -/
theorem ins_walk_ni {K' v : BitVec 64} {c : Bool} (hK : kbit m d be K' D = some c)
    (hw : WalkFrom m d be T K' (if c = b then nl else n) v) : WalkFrom m d be T K' ni v := by
  refine walk_child (b := c) (ins_ni0 hsh hv hc) (by rw [hv.niK, ins_kb hsh hv hc]; exact ins_dkb hsh hv hc)
    (by rw [hv.niK]; exact hK) ?_
  rw [ins_child_ni hsh hv hc]; exact hw

/-- One step of an old walk through an old internal node, in the new table. -/
theorem ins_step {K K' x y : BitVec 64} {c : Bool}
    (hKK : ∀ c : BitVec 64, c.toNat < (KB m0 T).toNat → kbit m d be K' c = kbit m0 d be K c)
    (lx : L x) (hk : KIND m0 T x ≠ KB m0 T) (hbt : kbit m0 d be K (KIND m0 T x) = some c)
    (IH : WalkFrom m d be T K' (fixI n ni (child m0 T x c)) y) : WalkFrom m d be T K' x y := by
  have hkx := ins_kind hsh hv hc lx
  refine walk_child (b := c) (live_ne0 hsh lx) (by rw [hkx, ins_kb hsh hv hc]; exact hk)
    (by rw [hkx, hKK _ (kind_lt_kb hsh lx hk)]; exact hbt) ?_
  rw [ins_child hsh hv hc lx hk]; exact IH

/-- **Old walks in the new table.** -/
theorem ins_walk_old {K K' y : BitVec 64}
    (hKK : ∀ c : BitVec 64, c.toNat < (KB m0 T).toNat → kbit m d be K' c = kbit m0 d be K c)
    (hbit : Anc m0 T n y → kbit m0 d be K D = some (!b)) {x : BitVec 64}
    (hw : WalkFrom m0 d be T K x y) (hx : x = 0 ∨ L x) : WalkFrom m d be T K' (fixI n ni x) y := by
  have hn0 := ins_n0 hsh hv hc
  have hKD : Anc m0 T n y → kbit m d be K' D = some (!b) := fun h => by
    rw [hKK _ hc.dkb]; exact hbit h
  have hnb : ∀ c : Bool, c = !b → (if c = b then nl else n) = n := by
    intro c hc'; subst hc'; cases b <;> rfl
  induction hw with
  | zero => rw [fixI_ne (Ne.symm hn0)]; exact .zero
  | leaf hx0 hk =>
      rename_i x
      have lx := hx.resolve_left hx0
      have hl : WalkFrom m d be T K' x x :=
        .leaf hx0 (by rw [ins_kind hsh hv hc lx, ins_kb hsh hv hc]; exact hk)
      by_cases hxn : x = n
      · subst hxn
        rw [fixI_n]
        exact ins_walk_ni hsh hv hc (hKD (.refl _)) (by rw [hnb _ rfl]; exact hl)
      · rw [fixI_ne hxn]; exact hl
  | left hx0 hk hbt hrest ih =>
      rename_i x v
      have lx := hx.resolve_left hx0
      have lL := (hsh.internal _ lx hk).1
      have IH := ih hbit (Or.inr lL) hKD
      have hw' : WalkFrom m d be T K' x v := ins_step (c := true) hsh hv hc hKK lx hk hbt IH
      by_cases hxn : x = n
      · subst hxn
        rw [fixI_n]
        exact ins_walk_ni hsh hv hc (hKD (.left hk (walk_anc hsh hrest lL).1)) (by rw [hnb _ rfl]; exact hw')
      · rw [fixI_ne hxn]; exact hw'
  | right hx0 hk hbt hrest ih =>
      rename_i x v
      have lx := hx.resolve_left hx0
      have lR := (hsh.internal _ lx hk).2.1
      have IH := ih hbit (Or.inr lR) hKD
      have hw' : WalkFrom m d be T K' x v := ins_step (c := false) hsh hv hc hKK lx hk hbt IH
      by_cases hxn : x = n
      · subst hxn
        rw [fixI_n]
        exact ins_walk_ni hsh hv hc (hKD (.right hk (walk_anc hsh hrest lR).1)) (by rw [hnb _ rfl]; exact hw')
      · rw [fixI_ne hxn]; exact hw'

/-- **The new leaf's walk**: along the search path, then through `ni` to `nl`. -/
theorem ins_walk_new {K' : BitVec 64}
    (hKK : ∀ c : BitVec 64, c.toNat < (KB m0 T).toNat → kbit m d be K' c = kbit m0 d be key c)
    {q x : BitVec 64} (hpth : Pth m0 d be T key D.toNat (hdr m0 T 56) q x) :
    ∀ v, WalkFrom m d be T K' (fixI n ni x) v → WalkFrom m d be T K' (fixI n ni (hdr m0 T 56)) v := by
  induction hpth with
  | start => exact fun v h => h
  | step c h' hx0 hk hD' hbt ih =>
      rename_i q x
      intro v hw
      have lx := (pth_live hsh h' hc.rl).1
      have hxn : x ≠ n := fun e => by have := hc.dlt; rw [e] at hD'; omega
      apply ih v
      rw [fixI_ne hxn]
      exact ins_step hsh hv hc hKK lx hk hbt hw

end ins

end InitECandidate.Solver.Spec.Inv
