import InitECandidate.Solver.SourceCost.LoopExtra.Data.Slice

/-!
# Orbit-depth version of the slice rule

`cost_while_slice` charges `2 ^ width + 1` iterations for a counter whose next value is
a function of the current one (pigeonhole over the orbit). When the next value is an
explicit function `f` and the orbit of `f` reaches a fixed point within `N` steps
(`f (f^N v) = f^N v`), a good run makes at most `N` iterations, because a run of `N + 1`
points satisfying the guard reaches the fixed point, where the guard keeps holding forever.
For `width = width * 2` (`sort_elems`), `f^width v = 0` is a fixed point, so `N = width`.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

open Classical in
theorem cost_while_slice_orbit {c : ExpHOL width} {body : ProgHOL width} {B : Nat} {n : MlS}
    {K : List MlS} (N : Nat) (f : BitVec width → BitVec width) (hb : Cost σ X body B)
    (hex : ∀ s : PanSemStateFiniteExact width σ, InCtx s X →
      Good (evaluateHOLFiniteState s body).1 → (evaluateHOLFiniteState s body).1 = none)
    (hkeep : ∀ y, y ∈ K → Keeps σ y body)
    (hf : ∀ (t : PanSemStateFiniteExact width σ) (u : BitVec width),
      t.locals.lookup n = some (.val (.word u)) → (evaluateHOLFiniteState t body).1 = none →
      wordLocal (evaluateHOLFiniteState t body).2 n = some (f u))
    (hfix : ∀ v, f (iterG f N v) = iterG f N v)
    (hcp : pureE (n :: K) c = true)
    (hcn : ∀ s : PanSemStateFiniteExact width σ,
      (∃ r, @evalHOLFinite width σ _ s (fun a => Classical.propDecidable (s.memaddrs a)) c =
        some r) → ∃ v, s.locals.lookup n = some (.val (.word v))) :
    Cost σ X (.while c body) ((N + 1) * (B + 1)) := by
  classical
  let Out : PanSemStateFiniteExact width σ → BitVec width → Option (BitVec width) := fun s =>
    sliceOut body n (SliceCand X body n K s)
  let Q : PanSemStateFiniteExact width σ → BitVec width → Bool := fun s u =>
    decide (CondTrue (setVarHOLFinite n (.val (.word u)) s) c) && (Out s u).isSome
  let G : PanSemStateFiniteExact width σ → BitVec width → BitVec width := fun s u =>
    (Out s u).getD 0
  -- Q and G depend only on the context locals `K`
  have hQG : ∀ s s' : PanSemStateFiniteExact width σ, AgreeOn K s s' → Q s' = Q s ∧ G s' = G s := by
    intro s s' h
    have hC : SliceCand X body n K s' = SliceCand X body n K s := by
      funext u t
      apply propext
      unfold SliceCand
      constructor
      · rintro ⟨h1, h2, h3, h4⟩; exact ⟨h1, agreeOn_trans h h2, h3, h4⟩
      · rintro ⟨h1, h2, h3, h4⟩; exact ⟨h1, agreeOn_trans (agreeOn_symm h) h2, h3, h4⟩
    have hOut : Out s' = Out s := by simp only [Out, hC]
    have hcond : ∀ u, CondTrue (setVarHOLFinite n (.val (.word u)) s') c ↔
        CondTrue (setVarHOLFinite n (.val (.word u)) s) c := by
      intro u
      have hag : AgreeOn (n :: K) (setVarHOLFinite n (.val (.word u)) s')
          (setVarHOLFinite n (.val (.word u)) s) := by
        intro y hy
        simp only [lookup_setVar_eq]
        split
        · rfl
        · rename_i hyn
          exact (h y ((List.mem_cons.mp hy).resolve_left hyn)).symm
      unfold CondTrue evalHOLFinite
      rw [evalFinite_pure hag hcp]
    refine ⟨?_, ?_⟩
    · funext u
      simp only [Q]
      rw [hOut]
      congr 1
      exact decide_eq_decide.mpr (hcond u)
    · funext u
      simp only [G]
      rw [hOut]
  -- one normal body run from `decClock s`
  have hrun : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → ∀ v,
      s.locals.lookup n = some (.val (.word v)) →
      (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none →
      Out s v = wordLocal (evaluateHOLFiniteState (decClockHOLFinite s) body).2 n ∧
        Q (evaluateHOLFiniteState (decClockHOLFinite s) body).2 = Q s ∧
        G (evaluateHOLFiniteState (decClockHOLFinite s) body).2 = G s := by
    intro s hs v hv hnone
    have hcand : SliceCand X body n K s v (decClockHOLFinite s) :=
      ⟨hs, fun _ _ => rfl, hv, hnone⟩
    have hex' : ∃ t, SliceCand X body n K s v t := ⟨_, hcand⟩
    have hspec := Classical.choose_spec hex'
    have hag : AgreeOn (n :: K) (decClockHOLFinite s) (Classical.choose hex') := by
      intro y hy
      rcases List.mem_cons.mp hy with rfl | hy
      · rw [hspec.2.2.1]; exact hv
      · exact hspec.2.1 y hy
    have h1 := hf (decClockHOLFinite s) v (by exact hv) hnone
    have h2 := hf (Classical.choose hex') v hspec.2.2.1 hspec.2.2.2
    refine ⟨?_, ?_⟩
    · simp only [Out, sliceOut, dif_pos hex']
      rw [h1, h2]
    · have hk : AgreeOn K s (evaluateHOLFiniteState (decClockHOLFinite s) body).2 := by
        intro y hy
        rw [hkeep y hy _ (Or.inl hnone)]
        rfl
      exact hQG s _ hk
  -- doomed states
  let Doomed : PanSemStateFiniteExact width σ → Prop := fun s =>
    InCtx s X ∧ ∃ v, s.locals.lookup n = some (.val (.word v)) ∧
      runLenG (Q s) (G s) (2 ^ width + 1) v = 2 ^ width + 1
  have never : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k → Doomed s →
      ¬ Good (evaluateHOLFiniteState s (.while c body)).1 := by
    intro k
    induction k using Nat.strongRecOn with
    | _ k ih =>
    intro s hk hd
    obtain ⟨hsc, v, hv, hfull⟩ := hd
    have hall := (runLenG_eq_iff (Q s) (G s) _ v).mp hfull
    have hq0 : Q s v = true := hall 0 (Nat.succ_pos _)
    have hR : setVarHOLFinite n (.val (.word v)) s = s := setVar_idem hv
    simp only [Q, Bool.and_eq_true, decide_eq_true_eq] at hq0
    obtain ⟨hct, hsome⟩ := hq0
    rw [hR] at hct
    obtain ⟨w, hw, hne⟩ := hct
    obtain ⟨u, hu⟩ := Option.isSome_iff_exists.mp hsome
    have hdecs : InCtx (decClockHOLFinite s) X := hsc
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
    dsimp only
    rw [hw]
    simp only [ne_eq, hne, not_false_eq_true, if_true]
    split
    · simp [Good]
    · cases hres : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
      | none =>
        dsimp only
        obtain ⟨hout, hQ', hG'⟩ := hrun s hsc v hv hres
        have hu1 : wordLocal (evaluateHOLFiniteState (decClockHOLFinite s) body).2 n = some u := by
          rw [← hout]; exact hu
        have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
          simp only [decClockHOLFinite] at this ⊢
          omega
        refine ih _ hlt _ rfl ⟨inCtx_eval hdecs body, u, wordLocal_eq_some hu1, ?_⟩
        rw [hQ', hG']
        have hGv : G s v = u := by simp only [G, hu, Option.getD_some]
        rw [← hGv]
        exact runLenG_full_step _ _ v hfull
      | some r =>
        have hng : ¬ Good (some r : Option (PanSemResultExact width)) := by
          intro hg
          have := hex _ hdecs (by rw [hres]; exact hg)
          rw [hres] at this
          cases this
        cases r with
        | «continue» => exact absurd (by simp [Good]) hng
        | «break» => exact absurd (by simp [Good]) hng
        | _ => exact hng
  -- on points where `Q` holds, `G` is `f`
  have hGf : ∀ s : PanSemStateFiniteExact width σ, ∀ u, Q s u = true → G s u = f u := by
    intro s u hq
    simp only [Q, Bool.and_eq_true, decide_eq_true_eq] at hq
    obtain ⟨-, hsome⟩ := hq
    have hex' : ∃ t, SliceCand X body n K s u t := by
      by_contra hno
      simp only [Out, sliceOut, dif_neg hno] at hsome
      simp at hsome
    have hspec := Classical.choose_spec hex'
    have h2 := hf (Classical.choose hex') u hspec.2.2.1 hspec.2.2.2
    simp only [G, Out, sliceOut, dif_pos hex']
    rw [h2]
    rfl
  -- a full run of `N + 1` points is doomed
  have big : ∀ s : PanSemStateFiniteExact width σ, ∀ v,
      runLenG (Q s) (G s) (N + 1) v = N + 1 →
      runLenG (Q s) (G s) (2 ^ width + 1) v = 2 ^ width + 1 := by
    intro s v h
    have hall := (runLenG_eq_iff (Q s) (G s) _ v).mp h
    have hIt : ∀ m, m ≤ N → iterG (G s) m v = iterG f m v := by
      intro m
      induction m with
      | zero => intro _; rfl
      | succ m ih =>
        intro hm
        show G s (iterG (G s) m v) = f (iterG f m v)
        rw [ih (by omega)]
        have hq := hall m (by omega)
        rw [ih (by omega)] at hq
        exact hGf s _ hq
    have hpN : Q s (iterG (G s) N v) = true := hall N (by omega)
    have hfixed : G s (iterG (G s) N v) = iterG (G s) N v := by
      rw [hGf s _ hpN, hIt N le_rfl]
      exact hfix v
    have hall' : ∀ m, Q s (iterG (G s) m v) = true := by
      intro m
      by_cases hm : m ≤ N
      · exact hall m (by omega)
      · have : ∀ j, iterG (G s) (N + j) v = iterG (G s) N v := by
          intro j
          induction j with
          | zero => rfl
          | succ j ih =>
            show G s (iterG (G s) (N + j) v) = _
            rw [ih, hfixed]
        have e := this (m - N)
        rw [show N + (m - N) = m by omega] at e
        rw [e]; exact hpN
    exact (runLenG_eq_iff (Q s) (G s) _ v).mpr (fun m _ => hall' m)
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup n with
    | some (.val (.word v)) => runLenG (Q s) (G s) (N + 1) v
    | _ => 0
  have hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c →
      Good (evaluateHOLFiniteState s (.while c body)).1 → μ s ≤ N := by
    intro s hs hct hg
    obtain ⟨v, hv⟩ := hcn s (by obtain ⟨w, hw, _⟩ := hct; exact ⟨_, hw⟩)
    simp only [μ, hv]
    have hle := runLenG_le (Q s) (G s) (N + 1) v
    have hne : runLenG (Q s) (G s) (N + 1) v ≠ N + 1 :=
      fun h => never _ s rfl ⟨hs, v, hv, big s v h⟩ hg
    omega
  refine cost_while_good μ N hb hM ?_
  intro s hs hct _ hg hexit hgt
  have hdecs : InCtx (decClockHOLFinite s) X := hs
  have hnone : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none := by
    rcases hexit with h | h
    · exact h
    · have := hex _ hdecs (by rw [h]; simp [Good])
      rw [h] at this; cases this
  obtain ⟨v, hv⟩ := hcn s (by obtain ⟨w, hw, _⟩ := hct; exact ⟨_, hw⟩)
  obtain ⟨u, hu⟩ := hcn _ (good_while_eval hgt)
  obtain ⟨hout, hQ', hG'⟩ := hrun s hs v hv hnone
  have hout' : Out s v = some u := by rw [hout]; exact wordLocal_of_lookup hu
  have hqv : Q s v = true := by
    simp only [Q, Bool.and_eq_true, decide_eq_true_eq, setVar_idem hv, hout',
      Option.isSome_some]
    exact ⟨hct, trivial⟩
  have hMs := hM s hs hct hg
  simp only [μ, hv] at hMs ⊢
  simp only [hu, hQ', hG']
  have hGv : G s v = u := by simp only [G, hout', Option.getD_some]
  have h1 : runLenG (Q s) (G s) (N + 1) v =
      runLenG (Q s) (G s) N (G s v) + 1 := by
    simp [runLenG, hqv]
  rw [h1] at hMs ⊢
  rw [hGv] at hMs ⊢
  rw [runLenG_succ_of_lt _ _ _ _ (by omega)]
  omega


/-! ## The doubling counter -/

/-- `p` ends, on normal completion, with the local `n` multiplied by `2`: a spine of
statements that keep `n` (or declare other locals) ending in `n = n * 2`. -/
def dblB (n : MlS) : ProgHOL width → Bool
  | .assign .local x (.panop .mul [.var .local y, .const k]) =>
      decide (x = n) && decide (y = n) && decide (k = BitVec.ofNat width 2)
  | .seq a b => keepsB n a && dblB n b
  | .dec x _ _ p => decide (x ≠ n) && dblB n p
  | _ => false

theorem dblB_sound (n : MlS) (hw : 2 ≤ width) :
    ∀ (p : ProgHOL width), dblB n p = true →
    ∀ (t : PanSemStateFiniteExact width σ) (u : BitVec width),
      t.locals.lookup n = some (.val (.word u)) → (evaluateHOLFiniteState t p).1 = none →
      wordLocal (evaluateHOLFiniteState t p).2 n = some (u * BitVec.ofNat width 2)
  | .assign .local x (.panop .mul [.var .local y, .const k]), h, t, u, hu, hn => by
      simp only [dblB, Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨⟨hx, hy⟩, hk⟩ := h
      subst hk
      subst hy
      subst hx
      obtain ⟨v, hv, he⟩ := assign_none hn
      have hv' : v = .val (.word (u * BitVec.ofNat width 2)) := by
        have : @evalHOLExact width σ _ t.toExact (fun a => Classical.propDecidable (t.memaddrs a))
            (.panop .mul [.var .local x, .const (BitVec.ofNat width 2)]) =
            some (.val (.word (u * BitVec.ofNat width 2))) := by
          simp [evalHOLExact, evalListHOLExact, hu, panOpHOL, valueIsWord, valueWord]
        rw [this] at hv
        exact (Option.some.inj hv).symm
      rw [he]
      subst hv'
      simp [wordLocal, lookup_setVar_eq]
  | .seq a b, h, t, u, hu, hn => by
      simp only [dblB, Bool.and_eq_true] at h
      obtain ⟨hk, hb⟩ := h
      obtain ⟨h1, e1⟩ := seq_none hn
      rw [e1]
      refine dblB_sound n hw b hb _ u ?_ (by rw [e1] at hn; exact hn)
      rw [keepsB_sound n a hk t (Or.inl h1)]
      exact hu
  | .dec x sh e p, h, t, u, hu, hn => by
      simp only [dblB, Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨hx, hp⟩ := h
      obtain ⟨v, hv, hn1, e1⟩ := dec_none hn
      rw [e1]
      have hu2 : (setVarHOLFinite x v t).locals.lookup n = some (.val (.word u)) := by
        rw [lookup_setVar_eq, if_neg (Ne.symm hx)]; exact hu
      have := dblB_sound n hw p hp _ u hu2 hn1
      have hnx : n ≠ x := Ne.symm hx
      unfold wordLocal at this ⊢
      simp only [lookup_resVarEq_restore, if_neg hnx]
      exact this
  | .skip, h, _, _, _, _ => by simp [dblB] at h
  | .break, h, _, _, _, _ => by simp [dblB] at h
  | .continue, h, _, _, _, _ => by simp [dblB] at h
  | .annot _ _, h, _, _, _, _ => by simp [dblB] at h
  | .tick, h, _, _, _, _ => by simp [dblB] at h
  | .primitive _ _ _, h, _, _, _, _ => by simp [dblB] at h
  | .store _ _, h, _, _, _, _ => by simp [dblB] at h
  | .store32 _ _, h, _, _, _, _ => by simp [dblB] at h
  | .storeByte _ _, h, _, _, _, _ => by simp [dblB] at h
  | .extCall _ _ _ _ _, h, _, _, _, _ => by simp [dblB] at h
  | .raise _ _, h, _, _, _, _ => by simp [dblB] at h
  | .return _, h, _, _, _, _ => by simp [dblB] at h
  | .shMemLoad _ _ _ _, h, _, _, _, _ => by simp [dblB] at h
  | .shMemStore _ _ _, h, _, _, _, _ => by simp [dblB] at h
  | .ite _ _ _, h, _, _, _, _ => by simp [dblB] at h
  | .while _ _, h, _, _, _, _ => by simp [dblB] at h
  | .call _ _ _, h, _, _, _, _ => by simp [dblB] at h
  | .decCall _ _ _ _ _, h, _, _, _, _ => by simp [dblB] at h
  | .assign .global _ _, h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.const _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.var _ _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.op _ _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.cmp _ _ _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.shift _ _ _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.load _ _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.load32 _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.loadByte _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.rstruct _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.rfield _ _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.nstruct _ _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.nfield _ _), h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ .baseAddr, h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ .topAddr, h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ .bytesInWord, h, _, _, _, _ => by simp [dblB] at h
  | .assign .local _ (.panop _ []), h, _, _, _, _ => by simp [dblB] at h

omit [NeZero width] in
theorem iterG_dbl_toNat (hw : 2 ≤ width) (v : BitVec width) :
    ∀ m, (iterG (fun u : BitVec width => u * BitVec.ofNat width 2) m v).toNat =
      v.toNat * 2 ^ m % 2 ^ width
  | 0 => by simp [iterG, Nat.mod_eq_of_lt v.isLt]
  | m + 1 => by
      show ((iterG (fun u : BitVec width => u * BitVec.ofNat width 2) m v) *
        BitVec.ofNat width 2).toNat = _
      have h2 : (BitVec.ofNat width 2).toNat = 2 := by
        rw [BitVec.toNat_ofNat]
        apply Nat.mod_eq_of_lt
        calc 2 < 2 ^ 2 := by decide
          _ ≤ 2 ^ width := Nat.pow_le_pow_right (by decide) hw
      rw [BitVec.toNat_mul, h2, iterG_dbl_toNat hw v m, Nat.mod_mul_mod, Nat.pow_succ,
        Nat.mul_assoc]

omit [NeZero width] in
theorem dbl_fix (hw : 2 ≤ width) (v : BitVec width) :
    (fun u : BitVec width => u * BitVec.ofNat width 2)
        (iterG (fun u : BitVec width => u * BitVec.ofNat width 2) width v) =
      iterG (fun u : BitVec width => u * BitVec.ofNat width 2) width v := by
  have h0 : iterG (fun u : BitVec width => u * BitVec.ofNat width 2) width v = 0 := by
    apply BitVec.eq_of_toNat_eq
    rw [iterG_dbl_toNat hw v width]
    simp [Nat.mul_mod_left]
  rw [h0]; exact BitVec.zero_mul

/-- `while c b` with counter `n` doubled by the body (`width = width * 2`): at most
`width` iterations of a good run. -/
def loopOkSliceDbl (ef : MlS → Bool) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match walkVar c with
  | some n =>
      match decide (2 ≤ width) && dblB n b with
      | true =>
        match onlyExitsCB ef false b && noContB b with
        | true => pureE (n :: sliceCtx n c b) c
        | false => false
      | false => false
  | none => false

theorem loopOkSliceDbl_sound {ef : MlS → Bool} (hef : EfSound σ X.code ef) {c : ExpHOL width}
    {b : ProgHOL width} {B : Nat} (h : loopOkSliceDbl ef c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((width + 1) * (B + 1)) := by
  unfold loopOkSliceDbl at h
  split at h
  · rename_i n hn
    split at h
    · rename_i hd
      simp only [Bool.and_eq_true, decide_eq_true_eq] at hd
      obtain ⟨hw, hdb⟩ := hd
      split at h
      · rename_i hx
        simp only [Bool.and_eq_true] at hx
        obtain ⟨hox, hnc⟩ := hx
        have hnc' := noContB_sound (σ := σ) b hnc
        refine cost_while_slice_orbit (n := n) (K := sliceCtx n c b) width
          (fun u : BitVec width => u * BitVec.ofNat width 2) hb ?_ ?_ ?_ (dbl_fix hw) h
          (walkVar_word hn)
        · intro s hs hg
          rcases exitPremise hef hox s hs hg with h | h
          · exact h
          · exact absurd h (hnc' s)
        · intro y hy
          unfold sliceCtx at hy
          rw [List.mem_filter, Bool.and_eq_true] at hy
          exact keepsB_sound y b hy.2.2
        · intro t u hu hn'
          exact dblB_sound n hw b hdb t u hu hn'
      · cases h
    · cases h
  · cases h

end InitECandidate.Solver.SourceCost
