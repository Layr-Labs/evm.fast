import InitECandidate.Solver.Spec.Mpt.InsertCode
import InitECandidate.Solver.Spec.Memeq

/-!
# Specifications of the small MPT callees

* `funSpec_node_invalidate`: `node_invalidate(N)` stores the zero word at `N + 8`,
  `N + 16`, `N + 24` (`zero3`) and keeps the globals.
* `funRet_min`: `min(a, b)` returns a word `m ≤ a, b`.
* `funRet_cpl`: `common_prefix_length(a, al, b, bl)` returns a word `pl ≤ al, bl`.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem lookupCode_four {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb pc pd : MlS} {sa sb sc sd : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb), (pc, sc), (pd, sd)], bd, rsh))
    (hab : pa ≠ pb) (hac : pa ≠ pc) (had : pa ≠ pd) (hbc : pb ≠ pc) (hbd : pb ≠ pd) (hcd : pc ≠ pd)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A B C D, vs = [A, B, C, D] ∧
      callee.lookup pa = some A ∧ callee.lookup pb = some B ∧ callee.lookup pc = some C ∧
      callee.lookup pd = some D := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, -⟩ := hcond
      match vs, hlen with
      | [A, B, C, D], _ =>
          refine ⟨rfl, rfl, A, B, C, D, rfl, ?_, ?_, ?_, ?_⟩
          · simp [hab, hac, had]
          · simp [hbc, hbd]
          · simp [hcd]
          · simp
    · simp at hx

/-! ## `node_invalidate` -/

/-- Word update of a memory. -/
def upd (M : BitVec 64 → HolWordLab 64) (w : BitVec 64) (x : HolWordLab 64) :
    BitVec 64 → HolWordLab 64 :=
  fun a => if a = w then x else M a

/-- The memory after `node_invalidate(N)`. -/
def zero3 (M : BitVec 64 → HolWordLab 64) (N : BitVec 64) : BitVec 64 → HolWordLab 64 :=
  upd (upd (upd M (N + 8) (.word 0)) (N + 16) (.word 0)) (N + 24) (.word 0)

/-- `st x + k, 0` from a state whose local `x` is `N`. -/
theorem hoare_store_zero {P : PanSemStateFiniteExact 64 σ → Prop} {x : MlS} {N : BitVec 64}
    {k : Nat} (hx : ∀ s, P s → s.locals.lookup x = some (.val (.word N))) :
    Hoare σ X P (.store (.op .add [lv x, cw k]) (cw 0))
      (fun r t => r = none ∧ ∃ s, P s ∧ t.locals = s.locals ∧ t.globals = s.globals ∧
        t.memory = upd s.memory (N + BitVec.ofNat 64 k) (.word 0)) := by
  refine hoare_store fun s _ hs w v mem hw hv hmem => ?_
  rw [ev_add_cw (hx s hs) k] at hw
  cases hw
  rw [ev_cw] at hv
  cases hv
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  exact ⟨rfl, s, hs, rfl, rfl, rfl⟩

/-- The frame of `node_invalidate`'s stores: entry locals and globals, memory `m`. -/
def InvF (s0 : PanSemStateFiniteExact 64 σ) (m : BitVec 64 → HolWordLab 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.locals = s0.locals ∧ t.globals = s0.globals ∧ t.memory = m

theorem funSpec_node_invalidate (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "node_invalidate") (fun vs s r t => ∀ v, r = .returned v →
      ∃ N : BitVec 64, vs = [.val (.word N)] ∧ t.memory = zero3 s.memory N ∧
        t.globals = s.globals) := by
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_node_invalidate hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hA
  have hn : s0.locals.lookup (nm "nd") = some (.val (.word N)) := by rw [hloc]; exact hla
  have hloc' : ∀ m (t : PanSemStateFiniteExact 64 σ), InvF s0 m t →
      t.locals.lookup (nm "nd") = some (.val (.word N)) := fun _ t h => by rw [h.1]; exact hn
  have hstep : ∀ m (k : Nat), Hoare σ X (InvF s0 m) (.store (.op .add [lv (nm "nd"), cw k]) (cw 0))
      (fun r t => r = none ∧ InvF s0 (upd m (N + BitVec.ofNat 64 k) (.word 0)) t) := by
    intro m k
    refine hoare_post (hoare_store_zero (hloc' m)) ?_
    rintro _ t _ _ ⟨hr, u, ⟨h1, h2, h3⟩, e1, e2, e3⟩
    exact ⟨hr, e1.trans h1, e2.trans h2, by rw [e3, h3]⟩
  unfold invalBody
  refine hoare_pre (P := InvF s0 s0.memory) ?_ (fun t _ ht => by subst ht; exact ⟨rfl, rfl, rfl⟩)
  refine hoare_seq (hstep _ 8) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_pre (hoare_seq (hstep _ 16) (fun _ _ _ hr _ h => absurd h.1 hr) ?_)
    (fun _ _ h => h.2)
  refine hoare_pre (hoare_seq (hstep _ 24) (fun _ _ _ hr _ h => absurd h.1 hr) ?_)
    (fun _ _ h => h.2)
  refine hoare_pre (P := InvF s0 (zero3 s0.memory N)) ?_ (fun _ _ h => h.2)
  refine hoare_return fun t _ ht v _ => ?_
  intro v' _
  exact ⟨N, rfl, ht.2.2, ht.2.1⟩

/-! ## `min`, `common_prefix_length` -/

theorem funRet_min (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "min") (fun vs v => ∃ a b m : BitVec 64,
      vs = [.val (.word a), .val (.word b)] ∧ v = .val (.word m) ∧ m.toNat ≤ a.toNat ∧
        m.toNat ≤ b.toNat) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hla, hlb⟩ := lookupCode_two code_min (by decide) hl
  let Rm : ValueHOL 64 → Prop := fun v => ∃ a b m : BitVec 64,
      [A, B] = [.val (.word a), .val (.word b)] ∧ v = .val (.word m) ∧ m.toNat ≤ a.toNat ∧
        m.toNat ≤ b.toNat
  unfold minBody
  refine hoare_seq (R := fun r t => (r = none ∧ t.locals = callee ∧ ∃ a b : BitVec 64,
      A = .val (.word a) ∧ B = .val (.word b) ∧ b.toNat ≤ a.toNat) ∨
      ∃ v, r = some (.returned v) ∧ Rm v) ?_ ?_ ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun s _ ⟨hs, w, hw, hw0⟩ v hv => Or.inr ⟨v, rfl, ?_⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv, hs, hla] at hx
      rw [ev_lv, hs, hlb] at hy
      rw [ev_lv, hs, hla] at hv
      cases hx; cases hy; cases hv
      have := lower_true hxy
      exact ⟨x, y, x, rfl, rfl, le_refl _, by omega⟩
    · refine hoare_skip fun s _ ⟨hs, hc⟩ => Or.inl ⟨rfl, hs, ?_⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lv, hs, hla] at hx
      rw [ev_lv, hs, hlb] at hy
      cases hx; cases hy
      exact ⟨x, y, rfl, rfl, lower_false hxy⟩
  · rintro r t _ hr _ (⟨rfl, -⟩ | ⟨v, rfl, hv⟩)
    · exact absurd rfl hr
    · intro v' hv'
      simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
      subst hv'
      exact hv
  · refine hoare_return fun s _ h v hv => ?_
    rcases h with ⟨-, hs, a, b, ha, hb, hab⟩ | ⟨_, h, _⟩
    · intro v' hv'
      simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
      subst hv'
      rw [ev_lv, hs, hlb, hb] at hv
      cases hv
      exact ⟨a, b, b, by rw [ha, hb], rfl, hab, le_refl _⟩
    · cases h

theorem funRet_cpl (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "common_prefix_length") (fun vs v => ∃ (A C : ValueHOL 64) (al bl pl : BitVec 64),
      vs = [A, .val (.word al), C, .val (.word bl)] ∧ v = .val (.word pl) ∧
        pl.toNat ≤ al.toNat ∧ pl.toNat ≤ bl.toNat) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, D, rfl, -, hlb, -, hld⟩ :=
    lookupCode_four code_common_prefix_length (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hl
  unfold cplBody
  refine hoare_decCallS (funSpec_of_funRet (funRet_min hC))
    fun s _ hs vs' hvs callee' v st hR _ _ => ?_
  obtain ⟨a, b, m, hvs', rfl, hma, hmb⟩ := hR v rfl
  have hev : evs s [lv (nm "al"), lv (nm "bl")] = some [B, D] := by
    rw [evs_cons (by rw [ev_lv, hs]; exact hlb) (evs_cons (by rw [ev_lv, hs]; exact hld) evs_nil)]
  rw [hev, hvs'] at hvs
  simp only [Option.some.injEq, List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  -- the post does not depend on the final locals
  refine hoare_post (Q := fun r _ => ∀ v, r = some (.returned v) → ∃ (A' C' : ValueHOL 64)
      (al bl pl : BitVec 64), [A, .val (.word a), C, .val (.word b)] =
        [A', .val (.word al), C', .val (.word bl)] ∧ v = .val (.word pl) ∧
        pl.toNat ≤ al.toNat ∧ pl.toNat ≤ bl.toNat) ?_ (fun _ _ _ _ h => h)
  refine hoare_dec fun t0 _ ht0 vi hvi _ => ?_
  rw [ev_cw] at hvi
  cases hvi
  have hn0 : (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) t0).locals.lookup (nm "n") =
      some (.val (.word m)) := by
    rw [lk_set_ne _ _ (by decide), ht0, lk_set_self]
  let Qw : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop := fun r t =>
    (r = none ∧ t.locals.lookup (nm "n") = some (.val (.word m))) ∨
      ∃ pl : BitVec 64, r = some (.returned (.val (.word pl))) ∧ pl.toNat ≤ m.toNat
  have hpost : ∀ r (t : PanSemStateFiniteExact 64 σ), Qw r t →
      ∀ v, r = some (.returned v) → ∃ (A' C' : ValueHOL 64) (al bl pl : BitVec 64),
        [A, .val (.word a), C, .val (.word b)] = [A', .val (.word al), C', .val (.word bl)] ∧
          v = .val (.word pl) ∧ pl.toNat ≤ al.toNat ∧ pl.toNat ≤ bl.toNat := by
    rintro r t (⟨rfl, -⟩ | ⟨pl, rfl, hpl⟩) v hv
    · cases hv
    · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
      subst hv
      exact ⟨A, C, a, b, pl, rfl, rfl, by omega, by omega⟩
  refine hoare_conseq (P := fun t => t.locals.lookup (nm "n") = some (.val (.word m)) ∧
      ∃ w, t.locals.lookup (nm "i") = some (.val (.word w))) (Q := Qw) ?_
    (fun t _ ht => by subst ht; exact ⟨hn0, _, lk_set_self _ _ _⟩)
    (fun r t _ _ h => hpost r t h)
  refine hoare_seq (R := Qw) ?_ (fun r t _ hr _ h => ?_) ?_
  · refine hoare_while (fun _ h => h) ?_ ?_
    · -- the loop body
      unfold cplLoopBody
      refine hoare_seq (R := fun r t => (r = none ∧ t.locals.lookup (nm "n") = some (.val (.word m)) ∧
          ∃ w, t.locals.lookup (nm "i") = some (.val (.word w))) ∨
          ∃ pl : BitVec 64, r = some (.returned (.val (.word pl))) ∧ pl.toNat ≤ m.toNat) ?_ ?_ ?_
      · refine hoare_ite ?_ (hoare_skip fun t _ ⟨⟨⟨hn, hi⟩, _⟩, _⟩ => Or.inl ⟨rfl, hn, hi⟩)
        refine hoare_return fun t _ ⟨⟨⟨hn, w, hi⟩, hc⟩, _⟩ v hv => Or.inr ⟨w, ?_, ?_⟩
        · rw [ev_lv, hi] at hv; cases hv; rfl
        · obtain ⟨u, hu, hu0⟩ := hc
          obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hu hu0
          rw [ev_lv, hi] at hx; rw [ev_lv, hn] at hy
          cases hx; cases hy
          exact Nat.le_of_lt (lower_true hxy)
      · intro r t _ hr _ h
        rcases h with ⟨rfl, -⟩ | ⟨pl, rfl, hpl⟩
        · exact absurd rfl hr
        · exact ⟨nofun, nofun, nofun, fun v hv => Or.inr ⟨pl, hv ▸ rfl, hpl⟩⟩
      · refine hoare_assign fun t _ h v hv _ => ?_
        rcases h with ⟨-, hn, w, hi⟩ | ⟨_, h, _⟩
        · rw [ev_add_cw hi 1] at hv
          cases hv
          refine ⟨fun _ => ⟨by rw [lk_set_ne _ _ (by decide)]; exact hn, _, lk_set_self _ _ _⟩,
            nofun, nofun, nofun⟩
        · cases h
    · intro t _ ⟨hn, _⟩ _
      exact Or.inl ⟨rfl, hn⟩
  · rcases h with ⟨rfl, -⟩ | ⟨pl, rfl, hpl⟩
    · exact absurd rfl hr
    · exact Or.inr ⟨pl, rfl, hpl⟩
  · refine hoare_return fun t _ h v hv => Or.inr ⟨m, ?_, le_refl _⟩
    rcases h with ⟨-, hn⟩ | ⟨_, h, _⟩
    · rw [ev_lv, hn] at hv; cases hv; rfl
    · cases h

end InitECandidate.Solver.Spec.Mpt
