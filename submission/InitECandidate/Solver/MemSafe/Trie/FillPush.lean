import InitECandidate.Solver.MemSafe.Trie.FillPop

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# The push arm of `_node_rlp_fill`, exception-inclusive
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem st_stepG {t0 : State σ} {Mi : MemSafe.Mem} {fr : MlS} {k : Nat} {e : ExpHOL 64}
    {q V : BitVec 64} {E : State σ → Prop}
    (hq : t0.locals.lookup fr = some (.val (.word q)))
    (hv : ∀ t : State σ, t.locals = t0.locals → ev t e = some (.val (.word V))) :
    HoareG σ X (fun t => t.locals = t0.locals ∧ t.globals = t0.globals ∧ t.be = t0.be ∧
        t.memory = Mi) (.store (.op .add [lv fr, cw k]) e)
      (PG (fun t => t.locals = t0.locals ∧ t.globals = t0.globals ∧ t.be = t0.be ∧
        t.memory = Spec.Inv.upd Mi (q + BitVec.ofNat 64 k) V) E) := by
  refine hoareG_store fun s _ ⟨hl, hg, hbe, hm⟩ w v mem hw hv' hmem => ?_
  rw [ev_add_cw (by rw [hl]; exact hq) k] at hw
  cases hw
  rw [hv s hl] at hv'
  cases hv'
  obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
  exact pg_none ⟨hl, hg, hbe, by show Spec.Inv.upd s.memory _ _ = _; rw [hm]⟩

/-- A step footprint relative to the arm's entry state. -/
theorem stepW_push_mem {S0 : Nat} {Nd : BitVec 64 → Prop} {s0 u : State σ} {p p'' : Ptrs}
    (hS0 : p.sp ≤ S0) (hp : ptrsOf s0 = some p) (hp'' : ptrsOf u = some p'') (ho'' : p''.Ordered)
    (hhp : p.hp ≤ p''.hp) (hsp : p''.sp ≤ p.sp)
    (hg : ∀ g, g ≠ gHeap → g ≠ gScratch → u.globals.lookup g = s0.globals.lookup g)
    (hw : ∀ a, u.memory a ≠ s0.memory a → (p.hp ≤ a.toNat ∧ a.toNat < heapEnd) ∨
      (p''.sp ≤ a.toNat ∧ a.toNat < p.sp)) : StepW S0 Nd s0 u :=
  ⟨p, p'', hp, hp'', ho'', hhp, hsp, hg, fun a ha =>
    (hw a ha).elim (fun h => Or.inr (Or.inr (Or.inl h))) (fun h => Or.inr (Or.inr (Or.inr ⟨h.1, by omega⟩)))⟩

/-- **The push arm.** -/
theorem push_stepG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) {Nd : BitVec 64 → Prop} {HP0 S0 d : Nat}
    {p : Ptrs} {T N C : BitVec 64} {s0 : State σ} (hpre : ArmPreX Nd HP0 S0 d p T N s0)
    (hpush : PushPre Nd N C s0) :
    HoareG σ X (fun t => t = s0) pushArm
      (PG (fun t => FInvX Nd HP0 S0 t ∧ fMu t < (p.sp - heapEnd) / 24 + (d + 1) ∧ StepW S0 Nd s0 t)
        (StepW S0 Nd s0)) := by
  unfold pushArm
  obtain ⟨⟨hp, hord, h0, hb0, hsp, hS0, htr, hT', hN', hT8, hch⟩, hL, hB⟩ := hpre
  obtain ⟨hC0, hNdC, hkC, hkN⟩ := hpush
  have hhp := hord.2.1
  have hspE := heapEnd_le_sp hord
  have hS := Spec.Mpt.scratchEnd_lt
  refine hoareG_decCallP ((allocSpec_scratch_alloc hC).and (funSpec_be _))
    (Sin := fun t => FInvX Nd HP0 S0 t ∧ fMu t < (p.sp - heapEnd) / 24 + (d + 1) ∧ StepW S0 Nd s0 t)
    (fun t h old => ?_) (fun t h old => h) ?_ ?_
  · have hc := finvX_congr (s := t) (t := { t with locals := t.locals.resVarEq (nm "cf", old) })
      rfl rfl rfl (lookup_resVarEq_ne _ _ (by decide)) h.1
    exact ⟨hc.1, by rw [hc.2]; exact h.2.1, h.2.2⟩
  swap
  · -- abnormal ends of the allocation
    intro s hs hP vs hvs callee r st ⟨hA', hbeA⟩ hst habn
    subst hP
    rw [evs_cons (ev_cw _ 48) evs_nil] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    obtain ⟨hmA, hgA, p', hp', hord', hmono, -⟩ := hA' (abn_good habn) _ p rfl hp hord
    exact stepW_push_mem hsp hp hp' hord' hmono.1 hmono.2.2
      (fun g h1 h2 => hgA g h2) (fun a ha => absurd (congrFun hmA a) ha)
  intro s hs hP vs hvs callee v st ⟨hA', hbeA⟩ hst hsh
  subst hP
  rw [evs_cons (ev_cw _ 48) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hmA, hgA, p', hp', hord', hmono, hq⟩ := hA' (by simp [Good]) _ p rfl hp hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, hfree⟩ := hq _ rfl
  simp only [BitVec.toNat_ofNat] at hl2 hfree
  have hspE' := heapEnd_le_sp hord'
  have hm1 := hmono.1
  have hm3 := hmono.2.2
  have hq48 : q.toNat + 48 ≤ p.sp := by
    by_contra hlt
    exact hfree (q.toNat + 47) (by omega) (by omega) (Or.inr (Or.inr ⟨by omega, by omega⟩))
  have hk1A : gword st gKst = gword s gKst := gword_glob (hgA _ (by decide))
  have hk2A : gword st gKpad = gword s gKpad := gword_glob (hgA _ (by decide))
  set t2 := setVarHOLFinite (nm "cf") (.val (.word q)) { st with locals := s.locals } with ht2
  have hcf : t2.locals.lookup (nm "cf") = some (.val (.word q)) := lk_set_self _ _ _
  have hl2' : ∀ y, y ≠ nm "cf" → t2.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hT2 : t2.locals.lookup (nm "top") = some (.val (.word T)) := by
    rw [hl2' _ (by decide)]; exact hT'
  have hC2 : t2.locals.lookup (nm "child") = some (.val (.word C)) := by
    rw [hl2' _ (by decide)]; exact hC0
  let M3 : MemSafe.Mem := Spec.Inv.upd (Spec.Inv.upd (Spec.Inv.upd s.memory (q + BitVec.ofNat 64 0) T)
    (q + BitVec.ofNat 64 8) C) (q + BitVec.ofNat 64 16) (BitVec.ofNat 64 0)
  have hq0 : (q + BitVec.ofNat 64 0).toNat = q.toNat := toNat_add_k (by omega)
  have hq8 : (q + BitVec.ofNat 64 8).toNat = q.toNat + 8 := toNat_add_k (by omega)
  have hq16 : (q + BitVec.ofNat 64 16).toNat = q.toNat + 16 := toNat_add_k (by omega)
  have hM3 : ∀ x : BitVec 64, M3 x ≠ s.memory x → q.toNat ≤ x.toNat ∧ x.toNat < q.toNat + 48 := by
    intro x hx
    simp only [M3, Spec.Inv.upd] at hx
    split at hx
    · rename_i e; subst e; omega
    split at hx
    · rename_i e; subst e; omega
    split at hx
    · rename_i e; subst e; omega
    exact absurd rfl hx
  have hqo : ∀ x : BitVec 64, x.toNat < heapEnd → ∀ k : Nat, k < 48 → x ≠ q + BitVec.ofNat 64 k :=
    fun x hx k hk e => by
      have := congrArg BitVec.toNat e
      rw [toNat_add_k (by omega)] at this
      omega
  -- the three stores, then `_node_rlp_begin`, then `top = cf`
  unfold pushK
  refine hoareG_preP (P := fun t => t.locals = t2.locals ∧ t.globals = t2.globals ∧ t.be = t2.be ∧
    t.memory = s.memory) ?_ (fun t ht => by subst ht; exact ⟨rfl, rfl, rfl, hmA⟩)
  refine hoareG_seqP (S1 := fun t => t.locals = t2.locals ∧ t.globals = t2.globals ∧ t.be = t2.be ∧
    t.memory = Spec.Inv.upd s.memory (q + BitVec.ofNat 64 0) T)
    (st_stepG hcf (fun t h => by rw [ev_lv, h]; exact hT2)) ?_
  refine hoareG_seqP (S1 := fun t => t.locals = t2.locals ∧ t.globals = t2.globals ∧ t.be = t2.be ∧
    t.memory = Spec.Inv.upd (Spec.Inv.upd s.memory (q + BitVec.ofNat 64 0) T) (q + BitVec.ofNat 64 8) C)
    (st_stepG hcf (fun t h => by rw [ev_lv, h]; exact hC2)) ?_
  refine hoareG_seqP (S1 := fun t => t.locals = t2.locals ∧ t.globals = t2.globals ∧ t.be = t2.be ∧
    t.memory = M3) (st_stepG (V := BitVec.ofNat 64 0) hcf (fun t _ => ev_cw t 0)) ?_
  let Sbeg : State σ → Prop := fun u => u.locals = t2.locals ∧ ∃ p'' : Ptrs, ptrsOf u = some p'' ∧
    p''.Ordered ∧ p'.hp ≤ p''.hp ∧ p''.sp = p'.sp ∧ gword u gKst = gword s gKst ∧
    gword u gKpad = gword s gKpad ∧ u.be = s.be ∧
    (∀ x, u.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp S0 x) ∧
    rd u.memory q = T ∧ rd u.memory (q + 8) = C ∧ rd u.memory (q + 16) = 0 ∧ RC u q C ∧
    (rd u.memory C ≠ 3 → p'.hp ≤ (rd u.memory (q + 24)).toNat ∧ (rd u.memory (q + 24)).toNat < p''.hp) ∧
    (rd u.memory (q + 32)).toNat < 2 ^ 33 ∧ StepW S0 Nd s u
  refine hoareG_seqP (S1 := Sbeg) ?_ ?_
  · refine hoareG_callDP ((((beginG hC hA hT hX0).and (beginSpec hC)).and (beginClen hC)).and
      (funSpec_be _)) ?_ ?_
    · intro s' hs' hP' vs hvs' callee v' st' ⟨⟨⟨hRG, hRS⟩, hRC⟩, hbe'⟩ hst'
      obtain ⟨hl, hg, hbe, hm⟩ := hP'
      rw [evs_cons (by rw [ev_lv, hl]; exact hcf) (evs_cons (by rw [ev_lv, hl]; exact hC2) evs_nil)]
        at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      have hps' : ptrsOf s' = some p' := by rw [ptrsOf_frame hg]; exact hp'
      have hgs : ∀ g, g ≠ gScratch → s'.globals.lookup g = s.globals.lookup g := fun g hg' => by
        rw [hg]; exact hgA g hg'
      have hk1s : gword s' gKst = gword s gKst := gword_glob (hgs _ (by decide))
      have hk2s : gword s' gKpad = gword s gKpad := gword_glob (hgs _ (by decide))
      have hw3 : ∀ x, s'.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp S0 x := fun x hx => by
        rw [hm] at hx
        obtain ⟨a1, a2⟩ := hM3 x hx
        exact Or.inr (Or.inr (Or.inr (Or.inl ⟨by omega, by omega⟩)))
      obtain ⟨hSS3, -, -⟩ := safe_keeps htr h0 hhp hspE (by omega) hw3
      have htr3 : TrieOK s' Nd HP0 := trieOK_frame (by omega) htr hSS3 hk1s hk2s
      obtain ⟨n1, n2, n3, -⟩ := htr.1 C hNdC
      have hCh : C.toNat < heapEnd := by have := nsz_ge (rd s.memory C); omega
      have hrdC : ∀ k : Nat, k < nsz (rd s.memory C) → rd s'.memory (C + BitVec.ofNat 64 k) =
          rd s.memory (C + BitVec.ofNat 64 k) := fun k hk => by
        rw [hm]; simp only [M3, rd_upd']
        rw [if_neg (hqo _ (by rw [toNat_add_k (by omega)]; omega) 0 (by omega)),
          if_neg (hqo _ (by rw [toNat_add_k (by omega)]; omega) 8 (by omega)),
          if_neg (hqo _ (by rw [toNat_add_k (by omega)]; omega) 16 (by omega))]
      have hkC3 : rd s'.memory C = rd s.memory C := by
        have := hrdC 0 (by have := nsz_ge (rd s.memory C); omega)
        simpa using this
      have hrk : RecKind (rd s'.memory C) := by
        rw [hkC3]
        have : (rd s.memory C).toNat ≠ 0 := fun h => hkC (BitVec.eq_of_toNat_eq h)
        unfold RecKind
        rcases (show (rd s.memory C).toNat = 1 ∨ (rd s.memory C).toNat = 2 ∨
          (rd s.memory C).toNat = 3 by omega) with h | h | h
        · left; exact BitVec.eq_of_toNat_eq h
        · right; left; exact BitVec.eq_of_toNat_eq h
        · right; right; exact BitVec.eq_of_toNat_eq h
      have hlenC : rd s'.memory C ≠ 3 → (rd s'.memory (C + 40)).toNat ≤ 2 ^ 32 := by
        intro hne
        have hne' : rd s.memory C ≠ 3 := by rw [← hkC3]; exact hne
        have hk12 : rd s.memory C = 1 ∨ rd s.memory C = 2 := by
          have : (rd s.memory C).toNat ≠ 0 := fun h => hkC (BitVec.eq_of_toNat_eq h)
          have h3 : (rd s.memory C).toNat ≠ 3 := fun h => hne' (BitVec.eq_of_toNat_eq h)
          rcases (show (rd s.memory C).toNat = 1 ∨ (rd s.memory C).toNat = 2 by omega) with h | h
          · left; exact BitVec.eq_of_toNat_eq h
          · right; exact BitVec.eq_of_toNat_eq h
        have h40 := (hL C hNdC).1 hk12
        have e40 : rd s'.memory (C + 40) = rd s.memory (C + 40) :=
          hrdC 40 (by rcases hk12 with e | e <;> rw [e] <;> decide)
        rw [e40]; exact h40
      have hbeS : s'.be = s.be := by rw [hbe]; exact hbeA
      -- the callee facts
      have hRG' := hRG (by simp [Good]) ⟨⟨p', hps', hord'⟩, q, C, rfl, by omega, by omega⟩
      obtain ⟨hPM, hmodG, -⟩ := hRG'
      obtain ⟨⟨p'', hp'', hord'', hhp'', hsp'', hk1, hk2⟩, hfoot, hrc, hcb⟩ :=
        hRS v' rfl q C p' rfl hps' hord' (by omega) (by omega)
          ⟨Nd, trieOK_mono (by omega) htr3, hNdC, hrk⟩
      have hclen := hRC (by simp [Good]) v' rfl q C p' rfl hps' hord' hlenC
      set u : State σ := { st' with locals := s'.locals } with hu
      have hmodG' : ∀ x, ¬ BR q p'.hp x → st'.memory x = s'.memory x := fun x hnb =>
        hmodG x (fun ⟨fr, nd, p0, hvs, hpp, hb⟩ => by
          simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
          obtain ⟨rfl, rfl⟩ := hvs
          have hpp' : ptrsOf s' = some p0 := hpp
          rw [hps'] at hpp'
          cases hpp'
          exact hnb hb)
      -- what changed since the arm entry
      have hchg : ∀ x : BitVec 64, u.memory x ≠ s.memory x →
          (q.toNat ≤ x.toNat ∧ x.toNat < q.toNat + 48) ∨ (p'.hp ≤ x.toNat ∧ x.toNat < heapEnd) := by
        intro x hx
        by_cases h3 : u.memory x = s'.memory x
        · rw [h3, hm] at hx
          exact Or.inl (hM3 x hx)
        · have hB : BR q p'.hp x := by
            by_contra hnb
            exact h3 (hmodG' x hnb)
          rcases hB with e | e | e | ⟨c1, c2⟩
          · subst e; left
            rw [show q + BitVec.ofNat 64 24 = q + BitVec.ofNat 64 24 from rfl, toNat_add_k (by omega)]
            omega
          · subst e; left; rw [toNat_add_k (by omega)]; omega
          · subst e; left; rw [toNat_add_k (by omega)]; omega
          · exact Or.inr ⟨c1, c2⟩
      have hwS : ∀ x, u.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp S0 x := fun x hx => by
        rcases hchg x hx with ⟨a1, a2⟩ | ⟨a1, a2⟩
        · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨by omega, by omega⟩)))
        · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨by omega, by omega⟩)))
      have hgS : ∀ g, g ≠ gHeap → g ≠ gScratch → u.globals.lookup g = s.globals.lookup g := by
        intro g h1 h2
        obtain ⟨-, -, -, -, -, -, hgg⟩ := hPM
        exact (hgg g h1 h2).trans (hgs g h2)
      have hSW : StepW S0 Nd s u := by
        refine stepW_push_mem hsp hp hp'' hord'' (le_trans hm1 hhp'') (by omega) hgS (fun a ha => ?_)
        rcases hchg a ha with ⟨a1, a2⟩ | h
        · exact Or.inr ⟨by omega, by omega⟩
        · exact Or.inl ⟨le_trans hm1 h.1, h.2⟩
      have hq0e : q = q + BitVec.ofNat 64 0 := by simp
      have hqn16 : q ≠ q + BitVec.ofNat 64 16 := by
        intro e; have := congrArg BitVec.toNat e; rw [hq16] at this; omega
      have hqn8 : q ≠ q + BitVec.ofNat 64 8 := by
        intro e; have := congrArg BitVec.toNat e; rw [hq8] at this; omega
      have hkeep : ∀ k : Nat, k < 24 → st'.memory (q + BitVec.ofNat 64 k) =
          s'.memory (q + BitVec.ofNat 64 k) := fun k hk => by
        refine hmodG' _ ?_
        rintro (e | e | e | ⟨c1, c2⟩)
        · have := congrArg BitVec.toNat e
          rw [toNat_add_k (by omega), toNat_add_k (by omega)] at this; omega
        · have := congrArg BitVec.toNat e
          rw [toNat_add_k (by omega), toNat_add_k (by omega)] at this; omega
        · have := congrArg BitVec.toNat e
          rw [toNat_add_k (by omega), toNat_add_k (by omega)] at this; omega
        · rw [toNat_add_k (by omega)] at c2; omega
      have hr0 : rd st'.memory q = T := by
        have := hkeep 0 (by decide)
        rw [rd_eq (show st'.memory q = s'.memory q by simpa using this), hm]
        simp only [M3, rd_upd']
        rw [if_neg hqn16, if_neg hqn8, if_pos hq0e]
      have hr8 : rd st'.memory (q + 8) = C := by
        have := hkeep 8 (by decide)
        rw [show q + 8 = q + BitVec.ofNat 64 8 from rfl, rd_eq this, hm]
        simp [M3, rd_upd']
      have hr16 : rd st'.memory (q + 16) = 0 := by
        have := hkeep 16 (by decide)
        rw [show q + 16 = q + BitVec.ofNat 64 16 from rfl, rd_eq this, hm]
        simp [M3, rd_upd']
      refine ⟨hl, p'', hp'', hord'', hhp'', hsp'', hk1.trans hk1s, hk2.trans hk2s,
        hbe'.trans hbeS, hwS, hr0, hr8, hr16, rc_of_eq rfl rfl hrc, ?_, hclen, hSW⟩
      intro hk3
      have hk3' : rd st'.memory C ≠ 3 := hk3
      obtain ⟨p3, hp3, c1, c2⟩ := hcb hk3'
      rw [hp''] at hp3; cases hp3
      exact ⟨c1, c2⟩
    · intro s' hs' hP' vs hvs' callee r' st' ⟨⟨⟨hRG, hRS⟩, hRC⟩, hbe'⟩ hst' habn
      obtain ⟨hl, hg, hbe, hm⟩ := hP'
      rw [evs_cons (by rw [ev_lv, hl]; exact hcf) (evs_cons (by rw [ev_lv, hl]; exact hC2) evs_nil)]
        at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      have hps' : ptrsOf s' = some p' := by rw [ptrsOf_frame hg]; exact hp'
      have hgs : ∀ g, g ≠ gScratch → s'.globals.lookup g = s.globals.lookup g := fun g hg' => by
        rw [hg]; exact hgA g hg'
      obtain ⟨hPM, hmodG, -⟩ := hRG (abn_good habn) ⟨⟨p', hps', hord'⟩, q, C, rfl, by omega, by omega⟩
      have hmodG' : ∀ x, ¬ BR q p'.hp x → st'.memory x = s'.memory x := fun x hnb =>
        hmodG x (fun ⟨fr, nd, p0, hvs, hpp, hb⟩ => by
          simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
          obtain ⟨rfl, rfl⟩ := hvs
          have hpp' : ptrsOf s' = some p0 := hpp
          rw [hps'] at hpp'
          cases hpp'
          exact hnb hb)
      obtain ⟨pa, pb, e1, e2, hmo, hordb, hgg⟩ := hPM
      have e1' : ptrsOf s' = some pa := e1
      rw [hps'] at e1'
      cases e1'
      have hmo3 := hmo.2.2
      refine stepW_push_mem hsp hp e2 hordb (le_trans hm1 hmo.1) (by omega)
        (fun g h1 h2 => (hgg g h1 h2).trans (hgs g h2)) (fun a ha => ?_)
      by_cases h3 : st'.memory a = s'.memory a
      · have : M3 a ≠ s.memory a := by rw [← hm]; intro e; apply ha; show st'.memory a = _; rw [h3]; exact e
        exact Or.inr (by obtain ⟨b1, b2⟩ := hM3 a this; exact ⟨by omega, by omega⟩)
      · have hB : BR q p'.hp a := by
          by_contra hnb
          exact h3 (hmodG' a hnb)
        rcases hB with e | e | e | ⟨c1, c2⟩
        · subst e; right; rw [toNat_add_k (by omega)]; constructor <;> omega
        · subst e; right; rw [toNat_add_k (by omega)]; constructor <;> omega
        · subst e; right; rw [toNat_add_k (by omega)]; constructor <;> omega
        · exact Or.inl ⟨le_trans hm1 c1, c2⟩
  · refine hoareG_assign fun u _ ⟨hlu, p'', hp'', hord'', hhp'', hsp'', hk1, hk2, hbeu, hw, hq0',
      hq8', hq16', hrc, hcb, hclen, hSW⟩ v hv _ => ?_
    rw [ev_lv, hlu, hcf] at hv
    cases hv
    set u2 := setVarHOLFinite (nm "top") (.val (.word q)) u with hu2
    have hp2 : ptrsOf u2 = some p'' := hp''
    obtain ⟨hSS, hrec, hheap⟩ := safe_keeps htr h0 hhp hspE (by omega) hw
    have hbe2 : u2.be = s.be := hbeu
    have htr2 : TrieOK u2 Nd HP0 := trieOK_frame (by omega) htr hSS hk1 hk2
    have hL2 : LenStat Nd u2 := lenStat_of_struct htr.1 (by omega) hSS hL
    obtain ⟨n1, n2, n3, -⟩ := htr.1 C hNdC
    have hrd : rd u.memory C = rd s.memory C := by
      have := nsz_ge (rd s.memory C)
      exact rd_eq (hSS C hNdC C (structCell_base (by omega)))
    have hT1 : rd s.memory (rd s.memory (T + 8)) ≠ 1 := by rw [hT8]; exact hkN
    have hold : ChainF u2 Nd HP0 p''.hp S0 (d + 1) (q.toNat + 48) true T := by
      refine chainF_mono_lo hq48 (chainF_frame (s := s) (t := u2) (by omega) hbe2
        (le_trans hm1 hhp'') hSS hheap htr.1 (by omega) (d + 1) p.sp T hrec
        (chainF_true_of hch hT1))
    have hBold : ChainB u2.memory (d + 1) T :=
      chainB_frame hS0 (d + 1) p.sp false T hch hrec hB
    have h8 : rd u2.memory (q + 8) = C := hq8'
    have hhE : 0 < heapEnd := by unfold heapEnd; decide
    have hq0n : q ≠ 0 := by intro e; subst e; simp at hl1; omega
    have hnew : ChainF u2 Nd HP0 p''.hp S0 (d + 2) p''.sp false q := by
      refine ⟨hq0n, by omega, by omega, ⟨?_, ?_, nofun, ?_, ?_, ?_⟩, ?_⟩
      · rw [h8]; exact hNdC
      · rw [h8]
        show RecKind (rd u.memory C)
        rw [hrd]
        have : (rd s.memory C).toNat ≠ 0 := fun h => hkC (BitVec.eq_of_toNat_eq h)
        unfold RecKind
        rcases (show (rd s.memory C).toNat = 1 ∨ (rd s.memory C).toNat = 2 ∨
          (rd s.memory C).toNat = 3 by omega) with h | h | h
        · left; exact BitVec.eq_of_toNat_eq h
        · right; left; exact BitVec.eq_of_toNat_eq h
        · right; right; exact BitVec.eq_of_toNat_eq h
      · show (rd u.memory (q + 16)).toNat ≤ 16
        rw [hq16']; simp
      · rw [h8]; exact rc_of_eq rfl rfl hrc
      · rw [h8]
        intro hk3
        obtain ⟨c1, c2⟩ := hcb hk3
        unfold cbCell
        exact ⟨le_trans (le_trans h0 hm1) (align_ge hord'.2.2.2.2.2.1 c1),
          lt_of_le_of_lt (align_le _) c2⟩
      · show ChainF u2 Nd HP0 p''.hp S0 (d + 1) (q.toNat + 48) true (rd u.memory q)
        rw [hq0']
        exact hold
    refine pg_none ⟨⟨p'', hp2, hord'', by omega, hb0, by omega, hS0, htr2, hL2, q, d + 2,
      lk_set_self _ _ _, hnew, ⟨?_, ?_⟩⟩, ?_, hSW⟩
    · show (rd u.memory (q + 32)).toNat < 2 ^ 33
      exact hclen
    · show ChainB u2.memory (d + 1) (rd u.memory q)
      rw [hq0']; exact hBold
    · rw [fMu_of hp2 (lk_set_self _ _ _) hS0 hnew, hsp'']
      omega

end InitECandidate.Solver.MemSafe.Trie
