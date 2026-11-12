import InitECandidate.Solver.Spec.Mpt.Fill.Inv

/-!
# The child scan of one `_node_rlp_fill` iteration

`scan_hoare`: from the state `s4` after `nd`, `k`, `child = 0`, `found = 0`, the kind dispatch
(`scanArm`) ends normally in `ScanPost`: memory unchanged except the top record's `NR_I`
(a value `≤ 16`), globals and `be` unchanged, locals other than `child`/`found` unchanged, and
a nonzero `found` names a child `C ∈ Nd` with a nonzero kind word, under an extension or
branch node.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch gword)

/-- After the scan. -/
def ScanPost (Nd : BitVec 64 → Prop) (s4 : PanSemStateFiniteExact 64 σ) (T N : BitVec 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.globals = s4.globals ∧ t.be = s4.be ∧
    (∀ y, y ≠ nm "child" → y ≠ nm "found" → t.locals.lookup y = s4.locals.lookup y) ∧
    (t.memory = s4.memory ∨
      ∃ v : BitVec 64, v.toNat ≤ 16 ∧ t.memory = upd s4.memory (T + 16) (.word v)) ∧
    ∃ F C : BitVec 64, t.locals.lookup (nm "found") = some (.val (.word F)) ∧
      t.locals.lookup (nm "child") = some (.val (.word C)) ∧
      (F ≠ 0 → Nd C ∧ rd s4.memory C ≠ 0 ∧ rd s4.memory N ≠ 1)

/-- `found = _node_needs_rlp(child)` with `child = C`. -/
theorem callNeeds_spec (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    {P : PanSemStateFiniteExact 64 σ → Prop} {C : BitVec 64}
    (hc : ∀ t, P t → t.locals.lookup (nm "child") = some (.val (.word C))) :
    Hoare σ X P callNeeds (fun r t => r = none ∧ ∃ t0, P t0 ∧ t.memory = t0.memory ∧
      t.globals = t0.globals ∧ t.be = t0.be ∧
      (∀ y, y ≠ nm "found" → t.locals.lookup y = t0.locals.lookup y) ∧
      ∃ w : BitVec 64, t.locals.lookup (nm "found") = some (.val (.word w)) ∧
        (w ≠ 0 → C ≠ 0 ∧ heapBase ≤ C.toNat ∧ rd t0.memory C ≠ 0)) := by
  refine hoare_callA (k := .local) ((funSpec_needs hC hNS).and (funSpec_be _))
    fun s _ hs vs hvs callee v st ⟨hR, hbe⟩ _ _ => ⟨rfl, s, hs, ?_⟩
  rw [evs_cons (by rw [ev_lv]; exact hc s hs) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hm, hg, c, w, hcv, rfl, hw⟩ := hR v rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hcv
  subst hcv
  refine ⟨hm, hg, hbe, fun y hy => ?_, w, lk_set_self _ _ _, hw⟩
  show (setVarHOLFinite _ _ _).locals.lookup y = _
  rw [lk_set_ne _ _ (Ne.symm hy)]

/-! ## The branch scan loop -/

/-- The scan-loop invariant. -/
def ScanJ (Nd : BitVec 64 → Prop) (s4 : PanSemStateFiniteExact 64 σ)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.memory = s4.memory ∧ t.globals = s4.globals ∧ t.be = s4.be ∧
    (∀ y, y ≠ nm "child" → y ≠ nm "found" → y ≠ nm "i" → t.locals.lookup y = s4.locals.lookup y) ∧
    ∃ I F C : BitVec 64, t.locals.lookup (nm "i") = some (.val (.word I)) ∧
      t.locals.lookup (nm "found") = some (.val (.word F)) ∧
      t.locals.lookup (nm "child") = some (.val (.word C)) ∧ I.toNat ≤ 16 ∧
      (F ≠ 0 → Nd C ∧ rd s4.memory C ≠ 0)

theorem scanCond_ev {s : PanSemStateFiniteExact 64 σ} {I F : BitVec 64}
    (hi : s.locals.lookup (nm "i") = some (.val (.word I)))
    (hf : s.locals.lookup (nm "found") = some (.val (.word F))) :
    ev s scanCond = some (.val (.word
      (if wordCmpHOL .less I (BitVec.ofNat 64 16) = true ∧
        wordCmpHOL .equal F (BitVec.ofNat 64 0) = true then 1 else 0))) := by
  unfold scanCond
  have h1 := ev_cmp (o := .notEqual) (ev_cw s 0)
    (ev_cmp (o := .less) (ev_lw hi) (ev_cw s 16))
  have h2 := ev_cmp (o := .notEqual) (ev_cw s 0)
    (ev_cmp (o := .equal) (ev_lw hf) (ev_cw s 0))
  rw [ev_op (xs := [_, _]) (evs_cons h1 (evs_cons h2 evs_nil))]
  cases wordCmpHOL .less I (BitVec.ofNat 64 16) <;>
    cases wordCmpHOL .equal F (BitVec.ofNat 64 0) <;> rfl

theorem slot_ev {N I : BitVec 64} (_hI : I.toNat < 16) :
    N + (BitVec.ofNat 64 32 + I * BitVec.ofNat 64 8) = slot N I.toNat := by
  unfold slot
  congr 1
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    BitVec.toNat_ofNat]
  omega

theorem less16 {I : BitVec 64} (h : I.toNat ≤ 16)
    (hl : wordCmpHOL .less I (BitVec.ofNat 64 16) = true) : I.toNat < 16 := by
  simp only [wordCmpHOL, Compiler.Encoders.Asm.holAsmSignedLess, BitVec.toNat_ofNat] at hl
  split at hl
  · split at hl
    · simpa using hl
    · simp at hl
  · omega

/-- One scan step keeps `ScanJ`. -/
theorem scan_step (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    {Nd : BitVec 64 → Prop} {HP0 : Nat} {s4 : PanSemStateFiniteExact 64 σ} {N : BitVec 64}
    (hsh : NdShape s4.memory Nd HP0) (hNd : Nd N) (hk3 : rd s4.memory N = 3)
    (hN : s4.locals.lookup (nm "nd") = some (.val (.word N))) :
    Hoare σ X (fun t => ScanJ Nd s4 t ∧ CondTrue t scanCond) scanBody
      (fun r t => r = none ∧ ScanJ Nd s4 t) := by
  unfold scanBody
  -- `child = ld (nd + 32 + i * 8)`
  refine hoare_seq (R := fun r t => r = none ∧ ∃ I : BitVec 64, I.toNat < 16 ∧
      t.memory = s4.memory ∧ t.globals = s4.globals ∧ t.be = s4.be ∧
      (∀ y, y ≠ nm "child" → y ≠ nm "found" → y ≠ nm "i" → t.locals.lookup y = s4.locals.lookup y) ∧
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧
      t.locals.lookup (nm "child") = some (.val (.word (rd s4.memory (slot N I.toNat))))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun t _ ⟨⟨hm, hg, hbe, hl, I, F, C, hI, hF, _, hI16, _⟩, hc⟩ v hv _ => ?_
    obtain ⟨w, hw, hdom, rfl⟩ := ev_load_one hv
    have hcv := scanCond_ev hI hF
    obtain ⟨wc, hwc, hwc0⟩ := condTrue_iff.mp hc
    rw [hcv] at hwc
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hwc
    have hlt : wordCmpHOL .less I (BitVec.ofNat 64 16) = true := by
      by_contra hn; rw [if_neg (fun h => hn h.1)] at hwc; exact hwc0 hwc.symm
    have hI' := less16 hI16 hlt
    have hnd : t.locals.lookup (nm "nd") = some (.val (.word N)) := by
      rw [hl _ (by decide) (by decide) (by decide)]; exact hN
    rw [ev_add3 (ev_lw hnd) (ev_cw t 32) (ev_mul2 (ev_lw hI) (ev_cw t 8)), slot_ev hI'] at hw
    cases hw
    refine ⟨rfl, I, hI', hm, hg, hbe, fun y h1 h2 h3 => ?_, ?_, ?_⟩
    · rw [lk_set_ne _ _ (Ne.symm h1)]; exact hl y h1 h2 h3
    · rw [lk_set_ne _ _ (by decide)]; exact hI
    · rw [lk_set_self, hm, mem_word s4.memory]
  refine hoare_seq (R := fun r t => r = none ∧ ∃ I : BitVec 64, I.toNat < 16 ∧
      t.memory = s4.memory ∧ t.globals = s4.globals ∧ t.be = s4.be ∧
      (∀ y, y ≠ nm "child" → y ≠ nm "found" → y ≠ nm "i" → t.locals.lookup y = s4.locals.lookup y) ∧
      t.locals.lookup (nm "i") = some (.val (.word (I + 1))) ∧
      t.locals.lookup (nm "child") = some (.val (.word (rd s4.memory (slot N I.toNat))))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun t _ ⟨_, I, hI', hm, hg, hbe, hl, hI, hCh⟩ v hv _ => ?_
    rw [ev_add2 (ev_lw hI) (ev_cw t 1)] at hv
    cases hv
    refine ⟨rfl, I, hI', hm, hg, hbe, fun y h1 h2 h3 => ?_, lk_set_self _ _ _, ?_⟩
    · rw [lk_set_ne _ _ (Ne.symm h3)]; exact hl y h1 h2 h3
    · rw [lk_set_ne _ _ (by decide)]; exact hCh
  refine hoare_pre (P := fun t => ∃ I : BitVec 64, I.toNat < 16 ∧
      t.memory = s4.memory ∧ t.globals = s4.globals ∧ t.be = s4.be ∧
      (∀ y, y ≠ nm "child" → y ≠ nm "found" → y ≠ nm "i" → t.locals.lookup y = s4.locals.lookup y) ∧
      t.locals.lookup (nm "i") = some (.val (.word (I + 1))) ∧
      t.locals.lookup (nm "child") = some (.val (.word (rd s4.memory (slot N I.toNat)))))
    ?_ (fun _ _ h => h.2)
  refine hoare_exists fun I => ?_
  refine hoare_post (callNeeds_spec hC hNS (C := rd s4.memory (slot N I.toNat))
    (fun t h => h.2.2.2.2.2.2)) fun r t _ _ ⟨hr, t0, ⟨hI', hm, hg, hbe, hl, hi, hch⟩, hm', hg', hbe',
      hl', w, hw, hw0⟩ => ⟨hr, ?_, ?_, ?_, ?_, I + 1, w, rd s4.memory (slot N I.toNat), ?_, hw, ?_, ?_, ?_⟩
  · rw [hm', hm]
  · rw [hg', hg]
  · rw [hbe', hbe]
  · intro y h1 h2 h3; rw [hl' y h2]; exact hl y h1 h2 h3
  · rw [hl' _ (by decide)]; exact hi
  · rw [hl' _ (by decide)]; exact hch
  · rw [BitVec.toNat_add, show (1 : BitVec 64).toNat = 1 from rfl]; omega
  · intro hw1
    obtain ⟨c0, cb, ck⟩ := hw0 hw1
    rw [hm] at ck
    refine ⟨?_, ck⟩
    rcases (hsh N hNd).2.2.2.2 hk3 I.toNat hI' with h | h
    · omega
    · exact h

/-- **The branch arm.** -/
theorem br_scan (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    {Nd : BitVec 64 → Prop} {HP0 : Nat} {s4 : PanSemStateFiniteExact 64 σ} {T N : BitVec 64}
    (hsh : NdShape s4.memory Nd HP0) (hNd : Nd N) (hk3 : rd s4.memory N = 3)
    (hT : s4.locals.lookup (nm "top") = some (.val (.word T)))
    (hN : s4.locals.lookup (nm "nd") = some (.val (.word N)))
    (hc0 : s4.locals.lookup (nm "child") = some (.val (.word 0)))
    (hf0 : s4.locals.lookup (nm "found") = some (.val (.word 0)))
    (hI : (rd s4.memory (T + 16)).toNat ≤ 16) :
    Hoare σ X (fun t => t = s4)
      (.dec (nm "i") .one (.load .one (.op .add [lv (nm "top"), cw 16]))
        (.seq (.while scanCond scanBody) (.store (.op .add [lv (nm "top"), cw 16]) (lv (nm "i")))))
      (fun r t => r = none ∧ ScanPost Nd s4 T N t) := by
  refine hoare_dec fun s _ hs v hv _ => ?_
  subst hs
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add_cw hT 16] at hw
  cases hw
  rw [mem_word s.memory]
  set s5 := setVarHOLFinite (nm "i") (.val (.word (rd s.memory (T + 16)))) s
  have hJ5 : ScanJ Nd s s5 := by
    refine ⟨rfl, rfl, rfl, fun y _ _ h3 => lk_set_ne _ _ (Ne.symm h3), _, 0, 0, lk_set_self _ _ _,
      ?_, ?_, hI, fun h => absurd rfl h⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hf0
    · rw [lk_set_ne _ _ (by decide)]; exact hc0
  refine hoare_conseq (P := fun t => t = s5) (Q := fun r t => r = none ∧ t.globals = s.globals ∧
      t.be = s.be ∧
      (∀ y, y ≠ nm "child" → y ≠ nm "found" → y ≠ nm "i" → t.locals.lookup y = s.locals.lookup y) ∧
      ∃ I F C : BitVec 64, t.locals.lookup (nm "i") = some (.val (.word I)) ∧
        t.locals.lookup (nm "found") = some (.val (.word F)) ∧
        t.locals.lookup (nm "child") = some (.val (.word C)) ∧ I.toNat ≤ 16 ∧
        (F ≠ 0 → Nd C ∧ rd s.memory C ≠ 0) ∧ t.memory = upd s.memory (T + 16) (.word I))
    ?_ (fun _ _ h => h) ?_
  · refine hoare_seq (R := fun r t => r = none ∧ ScanJ Nd s t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_pre (hoare_while (I := ScanJ Nd s) (fun _ h => h) ?_ fun t _ h _ => ⟨rfl, h⟩)
        (fun t _ ht => by subst ht; exact hJ5)
      refine hoare_post (scan_step hC hNS hsh hNd hk3 hN) fun r t _ _ ⟨hr, hj⟩ => ?_
      subst hr
      exact ⟨fun _ => hj, nofun, nofun, fun _ h => nomatch h⟩
    · refine hoare_store fun t _ ⟨_, hj⟩ A V mem hA hV hmem => ?_
      obtain ⟨hm, hg, hbe, hl, I, F, C, hi, hf, hch, hI16, hFC⟩ := hj
      have htop : t.locals.lookup (nm "top") = some (.val (.word T)) := by
        rw [hl _ (by decide) (by decide) (by decide)]; exact hT
      rw [ev_add_cw htop 16] at hA
      cases hA
      rw [ev_lw hi] at hV
      cases hV
      simp only [flattenHOL] at hmem
      obtain ⟨-, rfl⟩ := stores_one hmem
      refine ⟨rfl, hg, hbe, hl, I, F, C, hi, hf, hch, hI16, hFC, ?_⟩
      show (fun a => if a = T + BitVec.ofNat 64 16 then HolWordLab.word I else t.memory a) = _
      rw [hm]; rfl
  · intro r t _ _ ⟨hr, hg, hbe, hl, I, F, C, hi, hf, hch, hI16, hFC, hm⟩
    refine ⟨hr, hg, hbe, fun y h1 h2 => ?_, Or.inr ⟨I, hI16, hm⟩, F, C, ?_, ?_, ?_⟩
    · show (t.locals.resVarEq _).lookup y = _
      rw [lookup_resVarEq_restore]
      split
      · rename_i e; subst e; rfl
      · rename_i e; exact hl y h1 h2 e
    · show (t.locals.resVarEq _).lookup _ = _
      rw [lookup_resVarEq_ne _ _ (by decide)]; exact hf
    · show (t.locals.resVarEq _).lookup _ = _
      rw [lookup_resVarEq_ne _ _ (by decide)]; exact hch
    · intro hF
      obtain ⟨a, b⟩ := hFC hF
      exact ⟨a, b, by rw [hk3]; decide⟩

/-- **The extension arm.** -/
theorem ext_scan (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    {Nd : BitVec 64 → Prop} {HP0 : Nat} {s4 : PanSemStateFiniteExact 64 σ} {T N : BitVec 64}
    (hsh : NdShape s4.memory Nd HP0) (hHP0 : HP0 ≤ heapEnd) (hNd : Nd N) (hk2 : rd s4.memory N = 2)
    (hT : s4.locals.lookup (nm "top") = some (.val (.word T))) (hTh : heapEnd ≤ T.toNat)
    (hTs : T.toNat + 48 ≤ scratchEnd)
    (hN : s4.locals.lookup (nm "nd") = some (.val (.word N)))
    (hc0 : s4.locals.lookup (nm "child") = some (.val (.word 0)))
    (hf0 : s4.locals.lookup (nm "found") = some (.val (.word 0))) :
    Hoare σ X (fun t => t = s4) extArm (fun r t => r = none ∧ ScanPost Nd s4 T N t) := by
  have := scratchEnd_lt
  have h16 : (T + 16).toNat = T.toNat + 16 := toNat_add_k (k := 16) (by omega)
  obtain ⟨n1, n2, -⟩ := hsh N hNd
  rw [hk2, nsz_2] at n2
  have hout : ∀ x : BitVec 64, x.toNat < heapEnd → x ≠ T + 16 := fun x hx e => by
    subst e; omega
  have h48 : (N + BitVec.ofNat 64 48).toNat < heapEnd := by
    rw [toNat_add_k (by omega)]; omega
  unfold extArm
  refine hoare_ite ?_ (hoare_skip fun t _ ⟨ht, _⟩ => ?_)
  · -- first visit: `NR_I = 1`, test the child
    refine hoare_seq (R := fun r t => r = none ∧ t.memory = upd s4.memory (T + 16) (.word 1) ∧ t.globals = s4.globals ∧
        t.be = s4.be ∧ t.locals = s4.locals) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_store fun t _ ⟨ht, _⟩ A V mem hA hV hmem => ?_
      subst ht
      rw [ev_add_cw hT 16] at hA; cases hA
      rw [ev_cw] at hV; cases hV
      simp only [flattenHOL] at hmem
      obtain ⟨-, rfl⟩ := stores_one hmem
      exact ⟨rfl, rfl, rfl, rfl, rfl⟩
    refine hoare_seq (R := fun r t => r = none ∧ t.memory = upd s4.memory (T + 16) (.word 1) ∧
        t.globals = s4.globals ∧ t.be = s4.be ∧ (∀ y, y ≠ nm "child" → t.locals.lookup y = s4.locals.lookup y) ∧
        t.locals.lookup (nm "child") = some (.val (.word (rd s4.memory (N + 48))))) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun t _ ⟨_, hm, hg, hbe, hl⟩ v hv _ => ?_
      obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
      have hnd : t.locals.lookup (nm "nd") = some (.val (.word N)) := by rw [hl]; exact hN
      rw [ev_add_cw hnd 48] at hw; cases hw
      refine ⟨rfl, hm, hg, hbe, fun y hy => by rw [lk_set_ne _ _ (Ne.symm hy), hl], ?_⟩
      rw [lk_set_self, hm]
      show some (ValueHOL.val (upd s4.memory (T + 16) (.word 1) (N + BitVec.ofNat 64 48))) = _
      rw [upd_out (b := N + BitVec.ofNat 64 48) (hout _ h48), mem_word s4.memory]; rfl
    refine hoare_post (callNeeds_spec hC hNS (C := rd s4.memory (N + 48)) (fun t h => h.2.2.2.2.2))
      fun r t _ _ ⟨hr, t0, ⟨_, hm, hg, hbe, hl, hch⟩, hm', hg', hbe', hl', w, hw, hw0⟩ => ⟨hr, ?_⟩
    refine ⟨by rw [hg', hg], by rw [hbe', hbe], fun y h1 h2 => by rw [hl' y h2, hl y h1],
      Or.inr ⟨1, by decide, by rw [hm', hm]⟩, w, _, hw, by rw [hl' _ (by decide)]; exact hch, ?_⟩
    intro hw1
    obtain ⟨c0, cb, ck⟩ := hw0 hw1
    have hNdC : Nd (rd s4.memory (N + 48)) := by
      rcases (hsh N hNd).2.2.2.1 hk2 with h | h
      · omega
      · exact h
    have hCh : (rd s4.memory (N + 48)).toNat < heapEnd := by
      have := (hsh _ hNdC).2.1; have := nsz_ge (rd s4.memory (rd s4.memory (N + 48))); omega
    refine ⟨hNdC, ?_, by rw [hk2]; decide⟩
    rw [hm, rd_upd, if_neg (hout _ hCh)] at ck
    exact ck
  · subst ht
    exact ⟨rfl, rfl, rfl, fun _ _ _ => rfl, Or.inl rfl, 0, 0, hf0, hc0, fun h => absurd rfl h⟩

/-- **The kind dispatch** (`scanArm`). -/
theorem scan_hoare (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    {Nd : BitVec 64 → Prop} {HP0 : Nat} {s4 : PanSemStateFiniteExact 64 σ} {T N : BitVec 64}
    (hsh : NdShape s4.memory Nd HP0) (hHP0 : HP0 ≤ heapEnd) (hNd : Nd N)
    (hT : s4.locals.lookup (nm "top") = some (.val (.word T))) (hTh : heapEnd ≤ T.toNat)
    (hTs : T.toNat + 48 ≤ scratchEnd)
    (hN : s4.locals.lookup (nm "nd") = some (.val (.word N)))
    (hk : s4.locals.lookup (nm "k") = some (.val (.word (rd s4.memory N))))
    (hc0 : s4.locals.lookup (nm "child") = some (.val (.word 0)))
    (hf0 : s4.locals.lookup (nm "found") = some (.val (.word 0)))
    (hI : (rd s4.memory (T + 16)).toNat ≤ 16) :
    Hoare σ X (fun t => t = s4) scanArm (fun r t => r = none ∧ ScanPost Nd s4 T N t) := by
  unfold scanArm
  have hkind : ∀ t : PanSemStateFiniteExact 64 σ, t = s4 → ∀ j : Nat, ∀ w : BitVec 64,
      ev t (.cmp .equal (lv (nm "k")) (cw j)) = some (.val (.word w)) → w ≠ 0 →
        rd s4.memory N = BitVec.ofNat 64 j := by
    intro t ht j w hw hw0
    subst ht
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lv, hk] at hx; rw [ev_cw] at hy
    cases hx; cases hy
    exact equal_true hxy
  refine hoare_ite ?_ ?_
  · intro t ht ⟨hts, w, hw, hw0⟩
    have hk2 := hkind t hts 2 w hw hw0
    subst hts
    exact ext_scan hC hNS hsh hHP0 hNd hk2 hT hTh hTs hN hc0 hf0 t ht rfl
  refine hoare_ite ?_ (hoare_skip fun t _ ⟨⟨ht, _⟩, _⟩ => ?_)
  · intro t ht ⟨⟨hts, _⟩, w, hw, hw0⟩
    have hk3 := hkind t hts 3 w hw hw0
    subst hts
    exact br_scan hC hNS hsh hNd hk3 hT hN hc0 hf0 hI t ht rfl
  · subst ht
    exact ⟨rfl, rfl, rfl, fun _ _ _ => rfl, Or.inl rfl, 0, 0, hf0, hc0, fun h => absurd rfl h⟩

end InitECandidate.Solver.Spec.Mpt
