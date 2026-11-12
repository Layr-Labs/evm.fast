import InitECandidate.Solver.MemSafe.Trie.FillFoot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `_node_rlp_fill`: the function
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem keeps_mark : SourceCost.Keeps σ (nm "mark") (.while fillCond fillBody : ProgHOL 64) :=
  keepsB_sound _ _ (by
    unfold fillCond fillBody scanArm extArm brArm scanCond scanBody callNeeds pushArm pushK popArm
    decide)

theorem hoareG_seqPQ {P S E : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64} (ha : HoareG σ X P a (PG S E)) (hb : HoareG σ X S b Q)
    (hE : ∀ r t, E t → Q (some r) t) : HoareG σ X P (.seq a b) Q :=
  hoareG_seq ha (fun r t _ hr _ h => by
    obtain ⟨r', hr'⟩ : ∃ r', r = some r' := by
      cases r with
      | none => exact absurd rfl hr
      | some r' => exact ⟨r', rfl⟩
    subst hr'
    exact hE r' t (h.2 r' rfl).2) (hoareG_pre hb fun t _ h => h.1 rfl)

/-- The allocation step as a foot. -/
theorem foot_alloc {Nd : BitVec 64 → Prop} {s0 st : State σ} {p p' : Ptrs} (hp : ptrsOf s0 = some p)
    (hm : st.memory = s0.memory) (hg : ∀ g, g ≠ gScratch → st.globals.lookup g = s0.globals.lookup g)
    (hp' : ptrsOf st = some p') (ho' : p'.Ordered) (hmono : p.Mono p') : Foot Nd s0 st p :=
  ⟨fun g _ h2 => hg g h2, p', hp', ho', hmono, fun a ha => absurd (by rw [hm]) ha⟩

set_option maxHeartbeats 8000000 in
/-- **`_node_rlp_fill`, as a `HoareG` triple.** -/
theorem fillMain_G (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) {Nd : BitVec 64 → Prop} {node : BitVec 64}
    {p : Ptrs} {s0 : State σ} (hp : ptrsOf s0 = some p) (hord : p.Ordered)
    (htr : TrieOK s0 Nd p.hp) (hNd : Nd node) (hrk : RecKind (rd s0.memory node))
    (hL : LenStat Nd s0) (hnode : s0.locals.lookup (nm "node") = some (.val (.word node))) :
    HoareG σ X (fun t => t = s0) fillMain (fun _ t => Foot Nd s0 t p) := by
  have hhp := hord.2.1
  have hspE := heapEnd_le_sp hord
  have hS := Spec.Mpt.scratchEnd_lt
  have hb0 := hord.1
  unfold fillMain
  refine hoareG_decCall ((markSpec'_scratch_mark hC).and (funSpec_be _)) ?_ ?_
  swap
  · intro s hs hP vs hvs callee r st ⟨hM, hbeM⟩ hst habn
    subst hP
    rw [evs_nil] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    obtain ⟨hmM, hgM, -⟩ := hM (abn_good habn) rfl
    exact foot_of_clean hp hord hmM hgM
  intro s hs hP vs hvs callee v st ⟨hM, hbeM⟩ hst hsh
  subst hP
  rw [evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hmM, hgM, hv⟩ := hM (by simp [Good]) rfl
  obtain ⟨wsp, hwsp, ewsp⟩ := ptrsOf_sp hp
  have hvw : v = .val (.word wsp) := mark_val_word (hv v rfl) hwsp
  subst hvw
  have hwspe : wsp = BitVec.ofNat 64 p.sp := BitVec.eq_of_toNat_eq (by
    rw [ewsp, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)])
  set s1 := setVarHOLFinite (nm "mark") (.val (.word wsp)) { st with locals := s.locals } with hs1
  have hm1 : s1.memory = s.memory := hmM
  have hg1 : s1.globals = s.globals := hgM
  have hbe1 : s1.be = s.be := hbeM
  have hp1 : ptrsOf s1 = some p := by rw [ptrsOf_frame hg1]; exact hp
  refine hoareG_decCall ((allocSpec_scratch_alloc hC).and (funSpec_be _)) ?_ ?_
  swap
  · intro s' hs' hP' vs hvs' callee r st' ⟨hA', hbeA⟩ hst' habn
    subst hP'
    rw [evs_cons (ev_cw _ 48) evs_nil] at hvs'
    simp only [Option.some.injEq] at hvs'
    subst hvs'
    obtain ⟨hmA, hgA, p', hp', hord', hmono, -⟩ := hA' (abn_good habn) _ p rfl hp1 hord
    exact foot_alloc hp (hmA.trans hm1) (fun g hg' => (hgA g hg').trans (congrArg (fun G => G.lookup g) hg1)) hp' hord' hmono
  intro s' hs' hP' vs hvs' callee' v' st' ⟨hA', hbeA⟩ hst' hsh'
  subst hP'
  rw [evs_cons (ev_cw _ 48) evs_nil] at hvs'
  simp only [Option.some.injEq] at hvs'
  subst hvs'
  obtain ⟨hmA, hgA, p', hp', hord', hmono, hq⟩ := hA' (by simp [Good]) _ p rfl hp1 hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, hfree⟩ := hq _ rfl
  simp only [BitVec.toNat_ofNat] at hl2 hfree
  have hspE' := heapEnd_le_sp hord'
  have hm1' := hmono.1
  have hm3 := hmono.2.2
  have hq48 : q.toNat + 48 ≤ p.sp := by
    by_contra hlt
    exact hfree (q.toNat + 47) (by omega) (by omega) (Or.inr (Or.inr ⟨by omega, by omega⟩))
  have hgA' : ∀ g, g ≠ gScratch → st'.globals.lookup g = s.globals.lookup g := fun g hg' =>
    (hgA g hg').trans (congrArg (fun G => G.lookup g) hg1)
  have hmA' : st'.memory = s.memory := hmA.trans hm1
  have hk1A : gword st' gKst = gword s gKst := gword_glob (hgA' _ (by decide))
  have hk2A : gword st' gKpad = gword s gKpad := gword_glob (hgA' _ (by decide))
  set t2 := setVarHOLFinite (nm "fr") (.val (.word q)) { st' with locals := s1.locals } with ht2
  have hfr : t2.locals.lookup (nm "fr") = some (.val (.word q)) := lk_set_self _ _ _
  have hnodeS : t2.locals.lookup (nm "node") = some (.val (.word node)) := by
    rw [lk_set_ne _ _ (by decide)]
    show s1.locals.lookup (nm "node") = _
    rw [hs1, lk_set_ne _ _ (by decide)]
    exact hnode
  have hmarkS : t2.locals.lookup (nm "mark") = some (.val (.word wsp)) := by
    rw [lk_set_ne _ _ (by decide)]
    show s1.locals.lookup (nm "mark") = _
    rw [hs1, lk_set_self]
  let M3 : MemSafe.Mem := Spec.Inv.upd (Spec.Inv.upd (Spec.Inv.upd s.memory (q + BitVec.ofNat 64 0)
    (BitVec.ofNat 64 0)) (q + BitVec.ofNat 64 8) node) (q + BitVec.ofNat 64 16) (BitVec.ofNat 64 0)
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
  have hEQ : ∀ (r : PanSemResultExact 64) (t : State σ), FoF s Nd p.hp p.sp t → Foot Nd s t p :=
    fun r t h => foot_of_foF hp hord h
  unfold fillK
  refine hoareG_pre (P := fun t => t.locals = t2.locals ∧ t.globals = t2.globals ∧ t.be = t2.be ∧
    t.memory = s.memory) ?_ (fun t _ ht => by subst ht; exact ⟨rfl, rfl, rfl, hmA'⟩)
  refine hoareG_seqPQ (S := fun t => t.locals = t2.locals ∧ t.globals = t2.globals ∧ t.be = t2.be ∧
    t.memory = Spec.Inv.upd s.memory (q + BitVec.ofNat 64 0) (BitVec.ofNat 64 0))
    (st_stepG (V := BitVec.ofNat 64 0) hfr (fun t _ => ev_cw t 0)) ?_ hEQ
  refine hoareG_seqPQ (S := fun t => t.locals = t2.locals ∧ t.globals = t2.globals ∧ t.be = t2.be ∧
    t.memory = Spec.Inv.upd (Spec.Inv.upd s.memory (q + BitVec.ofNat 64 0) (BitVec.ofNat 64 0))
      (q + BitVec.ofNat 64 8) node)
    (st_stepG hfr (fun t h => by rw [ev_lv, h]; exact hnodeS)) ?_ hEQ
  refine hoareG_seqPQ (S := fun t => t.locals = t2.locals ∧ t.globals = t2.globals ∧ t.be = t2.be ∧
    t.memory = M3) (st_stepG (V := BitVec.ofNat 64 0) hfr (fun t _ => ev_cw t 0)) ?_ hEQ
  let Sbeg : State σ → Prop := fun u => u.locals = t2.locals ∧ ∃ p'' : Ptrs, ptrsOf u = some p'' ∧
    p''.Ordered ∧ p'.hp ≤ p''.hp ∧ p''.sp = p'.sp ∧ gword u gKst = gword s gKst ∧
    gword u gKpad = gword s gKpad ∧ u.be = s.be ∧
    (∀ x, u.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp p.sp x) ∧
    rd u.memory q = 0 ∧ rd u.memory (q + 8) = node ∧ rd u.memory (q + 16) = 0 ∧ RC u q node ∧
    (rd u.memory node ≠ 3 → p'.hp ≤ (rd u.memory (q + 24)).toNat ∧
      (rd u.memory (q + 24)).toNat < p''.hp) ∧
    (rd u.memory (q + 32)).toNat < 2 ^ 33 ∧ StepW p.sp Nd s u
  refine hoareG_seqPQ (S := Sbeg) ?_ ?_ hEQ
  · refine hoareG_callDP ((((beginG hC hA hT hX0).and (beginSpec hC)).and (beginClen hC)).and
      (funSpec_be _)) ?_ ?_
    · intro s' hs' hP' vs hvs' callee v' st' ⟨⟨⟨hRG, hRS⟩, hRC⟩, hbe'⟩ hst'
      obtain ⟨hl, hg, hbe, hm⟩ := hP'
      rw [evs_cons (by rw [ev_lv, hl]; exact hfr) (evs_cons (by rw [ev_lv, hl]; exact hnodeS) evs_nil)]
        at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      have hps' : ptrsOf s' = some p' := by rw [ptrsOf_frame hg]; exact hp'
      have hgs : ∀ g, g ≠ gScratch → s'.globals.lookup g = s.globals.lookup g := fun g hg' => by
        rw [hg]; exact hgA' g hg'
      have hk1s : gword s' gKst = gword s gKst := gword_glob (hgs _ (by decide))
      have hk2s : gword s' gKpad = gword s gKpad := gword_glob (hgs _ (by decide))
      have hw3 : ∀ x, s'.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp p.sp x := fun x hx => by
        rw [hm] at hx
        obtain ⟨a1, a2⟩ := hM3 x hx
        exact Or.inr (Or.inr (Or.inr (Or.inl ⟨by omega, by omega⟩)))
      obtain ⟨hSS3, -, -⟩ := safe_keeps htr le_rfl hhp hspE (by omega) hw3
      have htr3 : TrieOK s' Nd p.hp := trieOK_frame hhp htr hSS3 hk1s hk2s
      obtain ⟨n1, n2, n3, -⟩ := htr.1 node hNd
      have hCh : node.toNat < heapEnd := by have := nsz_ge (rd s.memory node); omega
      have hrdC : ∀ k : Nat, k < nsz (rd s.memory node) → rd s'.memory (node + BitVec.ofNat 64 k) =
          rd s.memory (node + BitVec.ofNat 64 k) := fun k hk => by
        rw [hm]; simp only [M3, rd_upd']
        rw [if_neg (hqo _ (by rw [toNat_add_k (by omega)]; omega) 0 (by omega)),
          if_neg (hqo _ (by rw [toNat_add_k (by omega)]; omega) 8 (by omega)),
          if_neg (hqo _ (by rw [toNat_add_k (by omega)]; omega) 16 (by omega))]
      have hkC3 : rd s'.memory node = rd s.memory node := by
        have := hrdC 0 (by have := nsz_ge (rd s.memory node); omega)
        simpa using this
      have hrk' : RecKind (rd s'.memory node) := by rw [hkC3]; exact hrk
      have hlenC : rd s'.memory node ≠ 3 → (rd s'.memory (node + 40)).toNat ≤ 2 ^ 32 := by
        intro hne
        have hne' : rd s.memory node ≠ 3 := by rw [← hkC3]; exact hne
        have hk12 : rd s.memory node = 1 ∨ rd s.memory node = 2 := by
          unfold RecKind at hrk
          rcases hrk with h | h | h
          · exact Or.inl h
          · exact Or.inr h
          · exact absurd h hne'
        have h40 := (hL node hNd).1 hk12
        have e40 : rd s'.memory (node + 40) = rd s.memory (node + 40) :=
          hrdC 40 (by rcases hk12 with e | e <;> rw [e] <;> decide)
        rw [e40]; exact h40
      have hbeS : s'.be = s.be := by rw [hbe]; exact hbeA.trans hbe1
      have hRG' := hRG (by simp [Good]) ⟨⟨p', hps', hord'⟩, q, node, rfl, by omega, by omega⟩
      obtain ⟨hPM, hmodG, -⟩ := hRG'
      obtain ⟨⟨p'', hp'', hord'', hhp'', hsp'', hk1, hk2⟩, hfoot, hrc, hcb⟩ :=
        hRS v' rfl q node p' rfl hps' hord' (by omega) (by omega)
          ⟨Nd, trieOK_mono (by omega) htr3, hNd, hrk'⟩
      have hclen := hRC (by simp [Good]) v' rfl q node p' rfl hps' hord' hlenC
      set u : State σ := { st' with locals := s'.locals } with hu
      have hmodG' : ∀ x, ¬ BR q p'.hp x → st'.memory x = s'.memory x := fun x hnb =>
        hmodG x (fun ⟨fr, nd, p0, hvs, hpp, hb⟩ => by
          simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
          obtain ⟨rfl, rfl⟩ := hvs
          have hpp' : ptrsOf s' = some p0 := hpp
          rw [hps'] at hpp'
          cases hpp'
          exact hnb hb)
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
      have hwS : ∀ x, u.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp p.sp x := fun x hx => by
        rcases hchg x hx with ⟨a1, a2⟩ | ⟨a1, a2⟩
        · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨by omega, by omega⟩)))
        · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨by omega, by omega⟩)))
      have hgS : ∀ g, g ≠ gHeap → g ≠ gScratch → u.globals.lookup g = s.globals.lookup g := by
        intro g h1 h2
        obtain ⟨-, -, -, -, -, -, hgg⟩ := hPM
        exact (hgg g h1 h2).trans (hgs g h2)
      have hSW : StepW p.sp Nd s u := by
        refine stepW_push_mem le_rfl hp hp'' hord'' (le_trans hm1' hhp'') (by omega) hgS (fun a ha => ?_)
        rcases hchg a ha with ⟨a1, a2⟩ | h
        · exact Or.inr ⟨by omega, by omega⟩
        · exact Or.inl ⟨le_trans hm1' h.1, h.2⟩
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
      have hr0 : rd st'.memory q = 0 := by
        have := hkeep 0 (by decide)
        rw [rd_eq (show st'.memory q = s'.memory q by simpa using this), hm]
        simp only [M3, rd_upd']
        rw [if_neg hqn16, if_neg hqn8, if_pos hq0e]
        rfl
      have hr8 : rd st'.memory (q + 8) = node := by
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
      have hk3' : rd st'.memory node ≠ 3 := hk3
      obtain ⟨p3, hp3, c1, c2⟩ := hcb hk3'
      rw [hp''] at hp3; cases hp3
      exact ⟨c1, c2⟩
    · intro s' hs' hP' vs hvs' callee r' st' ⟨⟨⟨hRG, hRS⟩, hRC⟩, hbe'⟩ hst' habn
      obtain ⟨hl, hg, hbe, hm⟩ := hP'
      rw [evs_cons (by rw [ev_lv, hl]; exact hfr) (evs_cons (by rw [ev_lv, hl]; exact hnodeS) evs_nil)]
        at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      have hps' : ptrsOf s' = some p' := by rw [ptrsOf_frame hg]; exact hp'
      have hgs : ∀ g, g ≠ gScratch → s'.globals.lookup g = s.globals.lookup g := fun g hg' => by
        rw [hg]; exact hgA' g hg'
      obtain ⟨hPM, hmodG, -⟩ := hRG (abn_good habn) ⟨⟨p', hps', hord'⟩, q, node, rfl, by omega, by omega⟩
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
      refine foF_of_stepW le_rfl hp ?_
      refine stepW_push_mem le_rfl hp e2 hordb (le_trans hm1' hmo.1) (by omega)
        (fun g h1 h2 => (hgg g h1 h2).trans (hgs g h2)) (fun a ha => ?_)
      by_cases h3 : st'.memory a = s'.memory a
      · have : M3 a ≠ s.memory a := by
          rw [← hm]; intro e; apply ha; show st'.memory a = _; rw [h3]; exact e
        exact Or.inr (by obtain ⟨b1, b2⟩ := hM3 a this; exact ⟨by omega, by omega⟩)
      · have hB : BR q p'.hp a := by
          by_contra hnb
          exact h3 (hmodG' a hnb)
        rcases hB with e | e | e | ⟨c1, c2⟩
        · subst e; right; rw [toNat_add_k (by omega)]; constructor <;> omega
        · subst e; right; rw [toNat_add_k (by omega)]; constructor <;> omega
        · subst e; right; rw [toNat_add_k (by omega)]; constructor <;> omega
        · exact Or.inl ⟨le_trans hm1' c1, c2⟩
  -- `var top = fr; while ...; scratch_release(mark); return 0`
  refine hoareG_dec fun u _ hu v hv hsh => ?_
  obtain ⟨hlu, p'', hp'', hord'', hhp'', hsp'', hk1, hk2, hbeu, hw, hq0', hq8', hq16', hrc, hcb,
    hclen, hSW⟩ := hu
  rw [ev_lv, hlu, hfr] at hv
  cases hv
  set sL := setVarHOLFinite (nm "top") (.val (.word q)) u with hsL
  have hp2 : ptrsOf sL = some p'' := hp''
  obtain ⟨hSS, hrec, hheap⟩ := safe_keeps htr le_rfl hhp hspE (by omega) hw
  have htr2 : TrieOK sL Nd p.hp := trieOK_frame hhp htr hSS hk1 hk2
  have hL2 : LenStat Nd sL := lenStat_of_struct htr.1 hhp hSS hL
  obtain ⟨n1, n2, n3, -⟩ := htr.1 node hNd
  have hrd : rd sL.memory node = rd s.memory node := by
    have := nsz_ge (rd s.memory node)
    exact rd_eq (hSS node hNd node (structCell_base (by omega)))
  have hhE : 0 < heapEnd := by unfold heapEnd; decide
  have hq0n : q ≠ 0 := by intro e; subst e; simp at hl1; omega
  have hnew : ChainF sL Nd p.hp p''.hp p.sp 1 p''.sp false q := by
    refine ⟨hq0n, by omega, by omega, ⟨?_, ?_, nofun, ?_, ?_, ?_⟩, ?_⟩
    · show Nd (rd u.memory (q + 8)); rw [hq8']; exact hNd
    · show RecKind (rd u.memory (rd u.memory (q + 8)))
      rw [hq8']
      show RecKind (rd sL.memory node)
      rw [hrd]; exact hrk
    · show (rd u.memory (q + 16)).toNat ≤ 16
      rw [hq16']; simp
    · show RC u q (rd u.memory (q + 8))
      rw [hq8']; exact rc_of_eq rfl rfl hrc
    · show rd u.memory (rd u.memory (q + 8)) ≠ 3 →
        p.hp ≤ (cbCell u.memory q).toNat ∧ (cbCell u.memory q).toNat < p''.hp
      rw [hq8']
      intro hk3
      obtain ⟨c1, c2⟩ := hcb hk3
      unfold cbCell
      exact ⟨le_trans hm1' (align_ge hord'.2.2.2.2.2.1 c1), lt_of_le_of_lt (align_le _) c2⟩
    · show rd u.memory q = 0
      exact hq0'
  have hFI : FInvX Nd p.hp p.sp sL :=
    ⟨p'', hp2, hord'', by omega, hb0, by omega, hord.2.2.2.2.1, htr2, hL2, q, 1,
      lk_set_self _ _ _, hnew, ⟨by show (rd u.memory (q + 32)).toNat < 2 ^ 33; exact hclen, trivial⟩⟩
  have hFoF : FoF s Nd p.hp p.sp sL :=
    foF_of_eq (foF_of_stepW le_rfl hp hSW) rfl rfl
  have hmkL : sL.locals.lookup (nm "mark") = some (.val (.word wsp)) := by
    rw [hsL, lk_set_ne _ _ (by decide)]
    show u.locals.lookup (nm "mark") = _
    rw [hlu]; exact hmarkS
  let Jst : State σ → Prop := fun t => (FInvX Nd p.hp p.sp t ∧ FoF s Nd p.hp p.sp t) ∧
    t.locals.lookup (nm "mark") = some (.val (.word wsp))
  have hloop : HoareG σ X (fun t => t = sL) (.while fillCond fillBody)
      (PG Jst (FoF s Nd p.hp p.sp)) := by
    intro t ht hP hg
    obtain rfl := hP
    have H := loopG hC hA hT hNS hX0 (se := s) _ ht ⟨hFI, hFoF⟩ hg
    refine And.intro (fun hr => ?_) H.2
    refine ⟨H.1 hr, ?_⟩
    have := keeps_mark (σ := σ) _ (Or.inl hr)
    rw [this]; exact hmkL
  refine hoareG_seqPQ hloop ?_ hEQ
  refine hoareG_seqPQ (S := fun t => Foot Nd s t p) (E := fun t => Foot Nd s t p) ?_ ?_
    (fun r t h => h)
  · refine hoareG_callDP (releaseSpec_scratch_release hC) ?_ ?_
    · intro s2 hs2 hP2 vs hvs2 callee2 v2 st2 hR2 hst2
      rw [evs_cons (ev_lw hP2.2) evs_nil] at hvs2
      simp only [Option.some.injEq] at hvs2
      subst hvs2
      obtain ⟨hmem, hsp', hg'⟩ := hR2 (by simp [Good]) wsp rfl
      rw [hwspe] at hsp'
      exact foot_of_release hp hord hP2.1.2 hmem hsp' hg'
    · intro s2 hs2 hP2 vs hvs2 callee2 r2 st2 hR2 hst2 habn
      rw [evs_cons (ev_lw hP2.2) evs_nil] at hvs2
      simp only [Option.some.injEq] at hvs2
      subst hvs2
      obtain ⟨hmem, hsp', hg'⟩ := hR2 (abn_good habn) wsp rfl
      rw [hwspe] at hsp'
      exact foot_of_release hp hord hP2.1.2 hmem hsp' hg'
  · exact hoareG_return fun s3 _ hS3 v hv => hS3

/-- **`_node_rlp_fill` (exception-inclusive footprint).** -/
theorem fillG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) :
    FunSpec σ X (nm "_node_rlp_fill") (fun vs s r t => Good (some r) →
      ∀ (node : BitVec 64) (p : Ptrs) (Nd : BitVec 64 → Prop), vs = [.val (.word node)] →
        ptrsOf s = some p → p.Ordered → TrieOK s Nd p.hp → Nd node → RecKind (rd s.memory node) →
        LenStat Nd s → Foot Nd s t p) := by
  refine funSpecG_of_hoareG (R := fun vs s r t => ∀ (node : BitVec 64) (p : Ptrs)
      (Nd : BitVec 64 → Prop), vs = [.val (.word node)] →
        ptrsOf s = some p → p.Ordered → TrieOK s Nd p.hp → Nd node → RecKind (rd s.memory node) →
        LenStat Nd s → Foot Nd s t p) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hA0⟩ := lookupCode_one code_node_rlp_fill hl
  intro t ht hP hg r' hr' node p Nd hvs hp hord htr hNd hrk hL
  obtain rfl := hP
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hnode : t.locals.lookup (nm "node") = some (.val (.word node)) := by rw [hloc]; exact hA0
  have := fillMain_G hC hA hT hNS hX0 hp hord htr hNd hrk hL hnode t ht rfl hg
  exact this

end InitECandidate.Solver.MemSafe.Trie
