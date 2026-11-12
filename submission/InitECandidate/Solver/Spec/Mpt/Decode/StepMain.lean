import InitECandidate.Solver.Spec.Mpt.Decode.StepTail

/-!
# The footprint of `_decode_step`

`freshFoot_decode_step`: `_decode_step` satisfies the loop's hypothesis
`FreshFoot … (DecPreS H) (DecQ H)` for every `H`, given the leaf facts of `StepTail.lean`
(`rlp_decode_fully`, `rlp_list_to_slices`, `rlp_item`, `compact_to_nibbles`, `node_new_branch`).
The input slice lies in `[heapBase, H)`, so the decoded payload does (`RdfQ`), so every slice of
the array `rlp_list_to_slices` creates does (`SlQ`). Every later write is fresh with respect to
the pointers right after it (`Tk ps Ms`), so the array keeps its located slices (`slen_tk`).
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-- A callee step for both trackers. -/
theorem tk2_callee {p ps q q' : Ptrs} {M0 Ms : Mem} {t st : State σ} (h1 : Tk p M0 t)
    (h2 : Tk ps Ms t) (hq : ptrsOf t = some q) (hq' : ptrsOf st = some q') (hord' : q'.Ordered)
    (hm' : q.Mono q') (hf : ∀ a : BitVec 64, st.memory a ≠ t.memory a → ¬ q.Allocated a.toNat) :
    Tk p M0 st ∧ Tk ps Ms st := by
  obtain ⟨q1, hq1, -, hm1, hf1⟩ := h1
  obtain ⟨q2, hq2, -, hm2, hf2⟩ := h2
  rw [hq] at hq1 hq2
  cases hq1; cases hq2
  exact ⟨tk_callee hq hm1 hf1 hq' hord' hm' hf, tk_callee hq hm2 hf2 hq' hord' hm' hf⟩

theorem tk_ptrs {p : Ptrs} {M0 : Mem} {t : State σ} (h : Tk p M0 t) :
    ∃ q, ptrsOf t = some q ∧ q.Ordered ∧ p.Mono q := by
  obtain ⟨q, hq, hord, hm, -⟩ := h; exact ⟨q, hq, hord, hm⟩

theorem mono_trans {p q r : Ptrs} (h1 : p.Mono q) (h2 : q.Mono r) : p.Mono r := by
  obtain ⟨a1, a2, a3⟩ := h1; obtain ⟨b1, b2, b3⟩ := h2; exact ⟨by omega, by omega, by omega⟩

theorem fresh_blk {q q' : Ptrs} (hord' : q'.Ordered) {e : BitVec 64} {n : Nat} (h1 : q.hp ≤ e.toNat)
    (h2 : e.toNat + n ≤ q'.hp) (hord : q.Ordered) :
    ∀ a, e.toNat ≤ a → a < e.toNat + n → ¬ q.Allocated a := by
  intro a ha1 ha2 hA
  obtain ⟨-, x2, -⟩ := hord'
  obtain ⟨-, -, y3, y4, -⟩ := hord
  unfold Ptrs.Allocated at hA
  omega

theorem notEq_else {s : State σ} {e : ExpHOL 64} {x : BitVec 64} {k : Nat}
    (h : ev s e = some (.val (.word x)))
    (hc : ev s (.cmp .notEqual e (cw k)) = some (.val (.word 0))) : x = BitVec.ofNat 64 k := by
  obtain ⟨a, b, ha, hb, hab⟩ := cmp_false hc
  rw [h] at ha; rw [ev_cw] at hb; cases ha; cases hb
  exact notEqual_false hab

theorem slot_ld {A : BitVec 64} (i : Nat) (hi : 16 * i + 8 < 2 ^ 64) :
    A + (BitVec.ofNat 64 i * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) =
      A + BitVec.ofNat 64 (16 * i + 8) := by
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

/-- The value of `ld (arr + i * 16 + 8)`. -/
theorem ev_ldArr8 {s : State σ} {Ar : BitVec 64} (harr : s.locals.lookup (nm "arr") = some (.val (.word Ar)))
    (i : Nat) (hi : 16 * i + 8 < 2 ^ 64) :
    ∀ v, ev s (ldArr8 i) = some v → v = .val (.word (rd s.memory (Ar + BitVec.ofNat 64 (16 * i + 8)))) := by
  intro v hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add3 (ev_lw harr) (ev_mul2 (ev_cw _ i) (ev_cw _ 16)) (ev_cw _ 8)] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [slot_ld i hi, mem_word s.memory _]

/-! ## The extension path -/

theorem ds_ext (hC : X.code.lookup = guestCode)
    (hri : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) RiQ)
    (hcn : FreshFoot σ X (nm "compact_to_nibbles") LenPre (fun _ _ _ _ _ => True))
    {H : Nat} {vs : List (ValueHOL 64)} {p ps : Ptrs} {M0 Ms : Mem} {s1 : State σ}
    {Ar B Cc : BitVec 64}
    (harr : s1.locals.lookup (nm "arr") = some (.val (.word Ar)))
    (hpl : s1.locals.lookup (nm "p") = some (.val (.word B)))
    (hnl : s1.locals.lookup (nm "n") = some (.val (.word Cc)))
    (hTk : Tk p M0 s1) (hTks : Tk ps Ms s1) (hpps : p.Mono ps) (hps : ptrsOf s1 = some ps)
    (hA : p.hp ≤ Ar.toNat) (hAb : heapBase ≤ Ar.toNat) (hA32 : Ar.toNat + 32 ≤ ps.hp)
    (hpsh : ps.hp ≤ heapEnd) (hHp : H ≤ p.hp) (hsl : SLen Ms Ar 2 H) (hMs : s1.memory = Ms) :
    Hoare σ X (fun t => t = s1) dsExt (fun r t => r ≠ none ∧ DQ H vs p M0 r t) := by
  have hpsh' : ps.hp ≤ 2 ^ 64 := by unfold heapEnd at hpsh; omega
  unfold dsExt
  refine hoare_decCallS hri fun u _ hu vs1 hvs1 callee v st hR _ hsh => ?_
  subst u
  obtain ⟨x1, r1, rfl, -, hr1⟩ := evs_cons_inv hvs1
  obtain ⟨x2, r2, rfl, hx2, hr2⟩ := evs_cons_inv hr1
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr2
  subst hr2
  have hx2' := ev_ldArr8 harr 0 (by decide) _ hx2
  subst hx2'
  set len := rd s1.memory (Ar + BitVec.ofNat 64 (16 * 0 + 8))
  have hlen : len.toNat < 2 ^ 60 := by
    show (rd s1.memory _).toNat < _
    rw [hMs]
    have := slen_len hsl (j := 0) (by decide)
    have := hpps.1
    unfold heapEnd at hpsh
    omega
  obtain ⟨q1, hq1, hord1, -⟩ := tk_ptrs hTk
  rw [hps] at hq1; cases hq1
  obtain ⟨p1, hp1, hord1', hm1, hf1, hRi⟩ := hR _ rfl ps hps hord1 trivial
  obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh
  match ws, hwl with
  | [π0, π1, π2, π3], _ =>
  have hπ : π2.toNat ≤ len.toNat := hRi x1 len π0 π1 π2 π3 rfl rfl
  set t1 := setVarHOLFinite (nm "pi") (wv [π0, π1, π2, π3]) { st with locals := s1.locals }
  have hT1 := tk2_callee (st := t1) hTk hTks hps ((ptrsOf_frame rfl).trans hp1) hord1' hm1 hf1
  have hpi : t1.locals.lookup (nm "pi") = some (wv [π0, π1, π2, π3]) := lk_set_self _ _ _
  have hl1 : ∀ y, y ≠ nm "pi" → t1.locals.lookup y = s1.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  refine hoare_conseq (P := fun t => t = t1) (Q := fun r t => r ≠ none ∧ DQ H vs p M0 r t) ?_
    (fun _ _ h => h) (fun r t _ _ h => h)
  unfold dsPi
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  refine hoare_decCallS hcn fun u _ ⟨hu, _⟩ vs2 hvs2 callee2 v2 st2 hR2 _ hsh2 => ?_
  subst hu
  obtain ⟨y1, r1, rfl, hy1, hr1⟩ := evs_cons_inv hvs2
  obtain ⟨y2, r2, rfl, hy2, hr2⟩ := evs_cons_inv hr1
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr2
  subst hr2
  rw [ev_rfield_w hpi rfl] at hy2
  cases hy2
  have hp1' : ptrsOf t1 = some p1 := (ptrsOf_frame rfl).trans hp1
  obtain ⟨p2, hp2, hord2, hm2, hf2, -⟩ := hR2 _ rfl p1 hp1' hord1' ⟨y1, π2, rfl, by omega⟩
  obtain ⟨ws2, hwl2, rfl⟩ := eq_wv_of_shapeEq' (k := 3) hsh2
  match ws2, hwl2 with
  | [c0, c1, c2], _ =>
  set t2 := setVarHOLFinite (nm "cn") (wv [c0, c1, c2]) { st2 with locals := t1.locals }
  have hT2 := tk2_callee (st := t2) hT1.1 hT1.2 hp1' ((ptrsOf_frame rfl).trans hp2) hord2 hm2 hf2
  have hcn2 : t2.locals.lookup (nm "cn") = some (wv [c0, c1, c2]) := lk_set_self _ _ _
  have hl2 : ∀ y, y ≠ nm "cn" → y ≠ nm "pi" → t2.locals.lookup y = s1.locals.lookup y :=
    fun y hy hy' => by rw [lk_set_ne _ _ (Ne.symm hy)]; exact hl1 y hy'
  have hp2' : ptrsOf t2 = some p2 := (ptrsOf_frame rfl).trans hp2
  refine hoare_conseq (P := fun t => t = t2) (Q := fun r t => r ≠ none ∧ DQ H vs p M0 r t) ?_
    (fun _ _ h => h) (fun r t _ _ h => h)
  unfold dsCn
  refine hoare_seq (R := fun r u => (r = none → u = t2) ∧ (r ≠ none → r ≠ none ∧ DQ H vs p M0 r u))
    ?_ (fun _ _ _ hr _ h => h.2 hr) ?_
  · refine hoare_ite ?_ (hoare_skip fun u _ ⟨hu, _⟩ => ⟨fun _ => hu, fun h => absurd rfl h⟩)
    refine hoare_decCallS hri fun u _ ⟨hu, _⟩ vs3 _ callee3 v3 st3 hR3 _ hsh3 => ?_
    subst hu
    obtain ⟨p3, hp3, hord3, hm3, hf3, -⟩ := hR3 _ rfl p2 hp2' hord2 trivial
    obtain ⟨ws3, hwl3, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh3
    match ws3, hwl3 with
    | [v0, v1, v2, v3], _ =>
    set t3 := setVarHOLFinite (nm "vi") (wv [v0, v1, v2, v3]) { st3 with locals := t2.locals }
    have hT3 := tk2_callee (st := t3) hT2.1 hT2.2 hp2' ((ptrsOf_frame rfl).trans hp3) hord3 hm3 hf3
    have hp3' : ptrsOf t3 = some p3 := (ptrsOf_frame rfl).trans hp3
    refine hoare_conseq (P := fun t => t = t3) (Q := fun r t => r ≠ none ∧ DQ H vs p M0 r t) ?_
      (fun _ _ h => h) (fun r t _ _ h => ⟨fun hr => absurd hr h.1, fun _ => h⟩)
    unfold dsLeaf
    refine hoare_guard_seq (funRet_mpt_fail hC) ?_
    refine hoare_decCallS (freshFoot_node_new_leaf hC) fun u _ ⟨hu, _⟩ vs4 _ callee4 v4 st4 hR4 _ _ => ?_
    subst hu
    obtain ⟨p4, hp4, hord4, hm4, hf4, e, rfl, he1, he2⟩ := hR4 _ rfl p3 hp3' hord3 trivial
    set t4 := setVarHOLFinite (nm "lf") (.val (.word e)) { st4 with locals := t3.locals }
    have hT4 := tk2_callee (st := t4) hT3.1 hT3.2 hp3' ((ptrsOf_frame rfl).trans hp4) hord4 hm4 hf4
    have hl4 : ∀ y, y ≠ nm "lf" → y ≠ nm "vi" → y ≠ nm "cn" → y ≠ nm "pi" →
        t4.locals.lookup y = s1.locals.lookup y := fun y a b c d => by
      rw [lk_set_ne _ _ (Ne.symm a), lk_set_ne _ _ (Ne.symm b)]; exact hl2 y c d
    have hmps3 : ps.Mono p3 := mono_trans (mono_trans hm1 hm2) hm3
    have hfr : ∀ a, e.toNat ≤ a → a < e.toNat + 64 → ¬ ps.Allocated a := fun a h1 h2 =>
      not_alloc_of hmps3 (fresh_blk hord4 he1 he2 hord3 a h1 h2)
    have he64 : e.toNat + 64 < 2 ^ 64 := by
      have := hord4.2.1; unfold heapEnd at this; omega
    refine hoare_conseq (P := fun t => t = t4) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
    exact ds_leafRet (lk_set_self _ _ _)
      (by rw [hl4 _ (by decide) (by decide) (by decide) (by decide)]; exact hpl)
      (by rw [hl4 _ (by decide) (by decide) (by decide) (by decide)]; exact hnl)
      ((ptrsOf_frame rfl).trans hp4) hT4.1 hT4.2 hpps hfr he64
      (by have := hpps.1; have := hm1.1; have := hm2.1; have := hm3.1; omega) he2
  · intro u hctx ⟨hu, _⟩
    have hu' := hu rfl
    subst u
    refine (?_ : Hoare σ X (fun t => t = t2) _ (fun r t => r ≠ none ∧ DQ H vs p M0 r t)) t2 hctx rfl
    refine hoare_guard_seq (funRet_mpt_fail hC) ?_
    refine hoare_decCallS (MemSafe.allocSpec_scratch_alloc (σ := σ) hC)
      fun u _ ⟨hu, _⟩ vs5 hvs5 callee5 v5 st5 hR5 _ _ => ?_
    subst hu
    obtain ⟨hm5', p5, hp5, hord5, hm5, q, rfl, hq1, hq2, hfq⟩ := alloc88 hR5 hvs5 hp2' hord2
    set t5 := setVarHOLFinite (nm "rec") (.val (.word q)) { st5 with locals := t2.locals }
    have hT5 := tk2_callee (st := t5) hT2.1 hT2.2 hp2' ((ptrsOf_frame rfl).trans hp5) hord5 hm5
      (fun a ha => absurd (by rw [show t5.memory = st5.memory from rfl, hm5']) ha)
    have hl5 : ∀ y, y ≠ nm "rec" → y ≠ nm "cn" → y ≠ nm "pi" →
        t5.locals.lookup y = s1.locals.lookup y := fun y a b c => by
      rw [lk_set_ne _ _ (Ne.symm a)]; exact hl2 y b c
    have hmps2 : ps.Mono p2 := mono_trans hm1 hm2
    have hq64 : q.toNat + 88 < 2 ^ 64 := by have := hord2.2.2.2.2.1; unfold scratchEnd at this; omega
    refine hoare_conseq (P := fun t => t = t5) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
    exact ds_extRec (lk_set_self _ _ _)
      (by rw [hl5 _ (by decide) (by decide) (by decide)]; exact harr)
      (by rw [hl5 _ (by decide) (by decide) (by decide)]; exact hpl)
      (by rw [hl5 _ (by decide) (by decide) (by decide)]; exact hnl)
      (by rw [lk_set_ne _ _ (by decide)]; exact hcn2) ((ptrsOf_frame rfl).trans hp5) hT5.1 hT5.2 hpps
      (fun a h1 h2 => not_alloc_of hmps2 (hfq a h1 h2)) hq64 hq1
      (by have := hpps.2.2; have := hm1.2.2; have := hm2.2.2; omega) hA hAb hA32 hpsh' hHp hsl

/-! ## The branch path -/

theorem ds_br (hC : X.code.lookup = guestCode)
    (hbr : FreshFoot σ X (nm "node_new_branch") (fun _ _ => True) (fun _ p p' _ v => FreshRet 176 p p' v))
    {H : Nat} {vs : List (ValueHOL 64)} {p ps : Ptrs} {M0 Ms : Mem} {s1 : State σ}
    {Ar B Cc K : BitVec 64}
    (harr : s1.locals.lookup (nm "arr") = some (.val (.word Ar)))
    (hpl : s1.locals.lookup (nm "p") = some (.val (.word B)))
    (hnl : s1.locals.lookup (nm "n") = some (.val (.word Cc)))
    (hslv : s1.locals.lookup (nm "sl") = some (wv [Ar, K]))
    (hTk : Tk p M0 s1) (hTks : Tk ps Ms s1) (hpps : p.Mono ps) (hps : ptrsOf s1 = some ps)
    (hA : 0 < K.toNat → p.hp ≤ Ar.toNat) (hAb : 0 < K.toNat → heapBase ≤ Ar.toNat)
    (hAK : Ar.toNat + 16 * K.toNat ≤ ps.hp)
    (hpsh : ps.hp ≤ heapEnd) (hHp : H ≤ p.hp) (hsl : SLen Ms Ar K.toNat H) :
    Hoare σ X (fun t => t = s1) dsBr (fun r t => r ≠ none ∧ DQ H vs p M0 r t) := by
  have hpsh' : ps.hp ≤ 2 ^ 64 := by unfold heapEnd at hpsh; omega
  unfold dsBr
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  intro u0 hctx0 ⟨hu0, hc⟩
  subst u0
  have hK : K = BitVec.ofNat 64 17 := notEq_else (ev_rfield_w hslv rfl) hc
  have hK17 : K.toNat = 17 := by rw [hK]; rfl
  have hA := hA (by omega)
  have hAb := hAb (by omega)
  rw [hK17] at hAK hsl
  revert hctx0
  refine (fun h => h) ?_
  intro hctx0
  refine (?_ : Hoare σ X (fun t => t = s1) _ (fun r t => r ≠ none ∧ DQ H vs p M0 r t)) s1 hctx0 rfl
  obtain ⟨q0, hq0, hord0, -⟩ := tk_ptrs hTk
  rw [hps] at hq0; cases hq0
  refine hoare_decCallS hbr fun u _ hu vs6 _ callee6 v6 st6 hR6 _ _ => ?_
  subst u
  obtain ⟨p6, hp6, hord6, hm6, hf6, Bn, rfl, hb1, hb2⟩ := hR6 _ rfl ps hps hord0 trivial
  set t6 := setVarHOLFinite (nm "br") (.val (.word Bn)) { st6 with locals := s1.locals }
  have hT6 := tk2_callee (st := t6) hTk hTks hps ((ptrsOf_frame rfl).trans hp6) hord6 hm6 hf6
  have hp6' : ptrsOf t6 = some p6 := (ptrsOf_frame rfl).trans hp6
  refine hoare_conseq (P := fun t => t = t6) (Q := fun r t => r ≠ none ∧ DQ H vs p M0 r t) ?_
    (fun _ _ h => h) (fun r t _ _ h => h)
  refine hoare_decCallS (MemSafe.allocSpec_scratch_alloc (σ := σ) hC)
    fun u _ hu vs7 hvs7 callee7 v7 st7 hR7 _ _ => ?_
  subst hu
  obtain ⟨hm7', p7, hp7, hord7, hm7, q, rfl, hq1, hq2, hfq⟩ := alloc88 hR7 hvs7 hp6' hord6
  set t7 := setVarHOLFinite (nm "rec2") (.val (.word q)) { st7 with locals := t6.locals }
  have hT7 := tk2_callee (st := t7) hT6.1 hT6.2 hp6' ((ptrsOf_frame rfl).trans hp7) hord7 hm7
    (fun a ha => absurd (by rw [show t7.memory = st7.memory from rfl, hm7']) ha)
  have hl7 : ∀ y, y ≠ nm "rec2" → y ≠ nm "br" → t7.locals.lookup y = s1.locals.lookup y :=
    fun y a b => by rw [lk_set_ne _ _ (Ne.symm a), lk_set_ne _ _ (Ne.symm b)]
  have hq64 : q.toNat + 88 < 2 ^ 64 := by have := hord6.2.2.2.2.1; unfold scratchEnd at this; omega
  refine hoare_conseq (P := fun t => t = t7) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  exact ds_brRec (lk_set_self _ _ _) (by rw [lk_set_ne _ _ (by decide), lk_set_self])
    (by rw [hl7 _ (by decide) (by decide)]; exact harr)
    (by rw [hl7 _ (by decide) (by decide)]; exact hpl)
    (by rw [hl7 _ (by decide) (by decide)]; exact hnl)
    ((ptrsOf_frame rfl).trans hp7) hT7.1 hT7.2 hpps (fun a h1 h2 => not_alloc_of hm6 (hfq a h1 h2))
    hq64 hq1 (by have := hpps.2.2; have := hm6.2.2; omega) hA hAb (by omega) (by omega)
    (by have := hm7.1; omega) hpsh' hHp hsl

/-! ## `_decode_step` -/

/-- **`_decode_step`'s footprint.** -/
theorem freshFoot_decode_step (hC : X.code.lookup = guestCode)
    (hrdf : FreshFoot σ X (nm "rlp_decode_fully") (fun _ _ => True) RdfQ)
    (hsl : FreshFoot σ X (nm "rlp_list_to_slices") SlPre SlQ)
    (hri : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) RiQ)
    (hcn : FreshFoot σ X (nm "compact_to_nibbles") LenPre (fun _ _ _ _ _ => True))
    (hbr : FreshFoot σ X (nm "node_new_branch") (fun _ _ => True)
      (fun _ p p' _ v => FreshRet 176 p p' v)) (H : Nat) :
    FreshFoot σ X (nm "_decode_step") (DecPreS H) (DecQ H) := by
  refine funSpec_of_hoare fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hsA, hsB, hsC, hA, hB, hCc⟩ :=
    lookupCode_three code_decode_step (by decide) (by decide) (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Cc, rfl⟩ := val_of_shapeEq_one hsC
  intro s hs hs0 htr v hv p hp hord hpre
  subst hs0
  obtain ⟨a, P, N, hvs, hPb, hPN, p0, hp0, hHp⟩ := hpre
  rw [hp] at hp0; cases hp0
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨-, rfl, rfl⟩ := hvs
  have hphe : p.hp ≤ heapEnd := hord.2.1
  set vs := [ValueHOL.val (.word A), .val (.word B), .val (.word Cc)]
  suffices HH : Hoare σ X (fun t => t = s) dsBody (DQ H vs p s.memory) from HH s hs rfl htr v hv
  have hpl0 : s.locals.lookup (nm "p") = some (.val (.word B)) := by rw [hloc]; exact hB
  have hnl0 : s.locals.lookup (nm "n") = some (.val (.word Cc)) := by rw [hloc]; exact hCc
  unfold dsBody
  refine hoare_dec fun s1 _ hs1 vit hvit _ => ?_
  subst s1
  rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0)
    (evs_cons (ev_cw _ 0) evs_nil))))] at hvit
  cases hvit
  refine hoare_conseq (Q := DQ H vs p s.memory) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  refine hoare_dec fun s2 _ hs2 ve hve _ => ?_
  subst hs2
  rw [ev_cw] at hve; cases hve
  refine hoare_conseq (Q := DQ H vs p s.memory) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  set s2 := setVarHOLFinite (nm "e") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "it") (.rStruct [.val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0))]) s)
  have hit2 : s2.locals.lookup (nm "it") = some (.rStruct [.val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0))]) := by
    rw [lk_set_ne _ _ (by decide), lk_set_self]
  have hpl2 : s2.locals.lookup (nm "p") = some (.val (.word B)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hpl0
  have hnl2 : s2.locals.lookup (nm "n") = some (.val (.word Cc)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hnl0
  have hp2 : ptrsOf s2 = some p := (ptrsOf_frame rfl).trans hp
  let J1 : State σ → Prop := fun t => Tk p s.memory t ∧
    t.locals.lookup (nm "p") = some (.val (.word B)) ∧ t.locals.lookup (nm "n") = some (.val (.word Cc)) ∧
    ∃ i0 i1 i2 i3 : BitVec 64, t.locals.lookup (nm "it") = some (wv [i0, i1, i2, i3]) ∧
      B.toNat ≤ i1.toNat ∧ i1.toNat + i2.toNat ≤ B.toNat + Cc.toNat
  refine hoare_seq (R := fun r t => (r = none → J1 t) ∧ DQ H vs p s.memory r t) ?_
    (fun _ _ _ _ _ h => h.2) ?_
  · unfold dsCall
    refine hoare_callH hrdf ?_ ?_
    · intro t _ ht vs' hvs' callee' v' st hR _
      subst ht
      refine ⟨fun h => absurd h (by simp), fun k x hkx hval => ?_⟩
      simp only [Option.some.injEq, Prod.mk.injEq] at hkx
      obtain ⟨rfl, rfl⟩ := hkx
      refine ⟨fun _ => ?_, fun w hw => by cases hw⟩
      rw [evs_cons (ev_lw hpl2) (evs_cons (ev_lw hnl2) evs_nil)] at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      obtain ⟨q', hq', hord', hm', hf, hQ⟩ := hR _ rfl p hp2 hord trivial
      have hsh := shape_valid hit2 hval
      simp only [shapeOf_rStruct, List.map, shapeOf_val] at hsh
      obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh
      match ws, hwl with
      | [i0, i1, i2, i3], _ =>
        exact ⟨tk_callee hp2 ⟨le_rfl, le_rfl, le_rfl⟩ (fun _ h => absurd rfl h)
          ((ptrsOf_frame rfl).trans hq') hord' hm' hf,
          (lk_set_ne _ _ (by decide)).trans hpl2, (lk_set_ne _ _ (by decide)).trans hnl2,
          i0, i1, i2, i3, lk_set_self _ _ _, hQ B Cc i0 i1 i2 i3 rfl rfl (by
            unfold heapEnd at hphe; omega)⟩
    · intro t _ ht vs' _ callee' v' st _ _
      exact hoare_callD (funSpec_of_funRet (funRet_mpt_fail hC)) fun _ _ _ _ _ _ w _ hR _ =>
        (hR w rfl).elim
  refine hoare_seq (R := fun r t => (r = none → J1 t) ∧ DQ H vs p s.memory r t) ?_
    (fun _ _ _ _ _ h => h.2) ?_
  · unfold dsHead
    refine hoare_ite ?_ (hoare_skip fun t _ ⟨⟨hJ, _⟩, _⟩ => ⟨fun _ => hJ rfl, fun _ h => by cases h⟩)
    intro t hctx ⟨⟨hJ, _⟩, _⟩
    obtain ⟨hTk, -⟩ := hJ rfl
    refine (?_ : Hoare σ X (fun u => u = t) _ (fun r t => (r = none → J1 t) ∧
      DQ H vs p s.memory r t)) t hctx rfl
    refine hoare_seq (R := fun r u => (r = none → u = t) ∧ (r ≠ none → (r = none → J1 u) ∧
        DQ H vs p s.memory r u)) ?_ (fun _ _ _ hr _ h => h.2 hr) ?_
    · refine hoare_ite ?_ (hoare_skip fun u _ ⟨hu, _⟩ => ⟨fun _ => hu, fun h => absurd rfl h⟩)
      refine hoare_post (dq_return (v0 := .rStruct [.val (.word (BitVec.ofNat 64 0)),
          .val (.word (BitVec.ofNat 64 0))]) (fun u ⟨hu, _⟩ => by
            subst hu; exact ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)))
          (fun u ⟨hu, _⟩ => hu ▸ hTk) ?_)
        (fun r u _ _ h => ⟨fun e => absurd e h.1, fun _ => ⟨fun e => absurd e h.1, h.2⟩⟩)
      intro u _ q _ _
      exact ⟨0, 0, rfl, fun _ => Or.inl rfl, fun h => absurd rfl h⟩
    · exact hoare_callD (funSpec_of_funRet (funRet_mpt_fail hC)) fun _ _ _ _ _ _ w _ hR _ =>
        (hR w rfl).elim
  refine hoare_decCallS hsl fun t _ ⟨hJ, _⟩ vs' hvs' callee' vsl st hR _ hsh => ?_
  obtain ⟨hTk, hpl, hnl, i0, i1, i2, i3, hit, hi1, hi2⟩ := hJ rfl
  obtain ⟨x1, r1, rfl, hx1, hr1⟩ := evs_cons_inv hvs'
  obtain ⟨x2, r2, rfl, hx2, hr2⟩ := evs_cons_inv hr1
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr2
  subst hr2
  rw [ev_rfield_w hit rfl] at hx2
  cases hx2
  rw [ev_rfield_w hit rfl] at hx1
  cases hx1
  obtain ⟨q, hq, hordq, hmq⟩ := tk_ptrs hTk
  obtain ⟨ps, hps, hordps, hmps, hfs, hSl⟩ := hR _ rfl q hq hordq
    ⟨i1, i2, rfl, by omega, q, hq, by have := hmq.1; omega⟩
  obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
  match ws, hwl with
  | [Ar, K], _ =>
  obtain ⟨hAr1, hAr2, hslen⟩ := hSl Ar K rfl
  have hslen : SLen st.memory Ar K.toNat H := slen_of_sIn (hslen i1 i2 rfl) (by omega) (by omega)
  set t0 := setVarHOLFinite (nm "sl") (wv [Ar, K]) { st with locals := t.locals }
  have hps0 : ptrsOf t0 = some ps := (ptrsOf_frame rfl).trans hps
  have hT0 : Tk p s.memory t0 := by
    obtain ⟨q1, hq1, -, hm1, hf1⟩ := hTk
    rw [hq] at hq1; cases hq1
    exact tk_callee hq hm1 hf1 hps0 hordps hmps hfs
  have hT0s : Tk ps st.memory t0 := ⟨ps, hps0, hordps, ⟨le_rfl, le_rfl, le_rfl⟩, fun a h => absurd rfl h⟩
  have hpps : p.Mono ps := mono_trans hmq hmps
  refine hoare_conseq (P := fun u => u = t0) (Q := DQ H vs p s.memory) ?_ (fun _ _ h => h)
    (fun r u _ _ h => h)
  unfold dsSl
  have hsl0 : t0.locals.lookup (nm "sl") = some (wv [Ar, K]) := lk_set_self _ _ _
  refine hoare_dec fun u _ hu va hva _ => ?_
  subst hu
  rw [ev_rfield_w hsl0 rfl] at hva
  cases hva
  refine hoare_conseq (Q := DQ H vs p s.memory) ?_ (fun _ _ h => h) (fun r u _ _ h => h)
  set s1 := setVarHOLFinite (nm "arr") (.val (.word Ar)) t0
  have hl1 : ∀ y, y ≠ nm "arr" → y ≠ nm "sl" → s1.locals.lookup y = t.locals.lookup y :=
    fun y a b => by rw [lk_set_ne _ _ (Ne.symm a), lk_set_ne _ _ (Ne.symm b)]
  have harr1 : s1.locals.lookup (nm "arr") = some (.val (.word Ar)) := lk_set_self _ _ _
  have hsl1 : s1.locals.lookup (nm "sl") = some (wv [Ar, K]) := by
    rw [lk_set_ne _ _ (by decide), lk_set_self]
  have hpl1 : s1.locals.lookup (nm "p") = some (.val (.word B)) := by
    rw [hl1 _ (by decide) (by decide)]; exact hpl
  have hnl1 : s1.locals.lookup (nm "n") = some (.val (.word Cc)) := by
    rw [hl1 _ (by decide) (by decide)]; exact hnl
  have hps1 : ptrsOf s1 = some ps := (ptrsOf_frame rfl).trans hps0
  have hA' : 0 < K.toNat → p.hp ≤ Ar.toNat := fun hK => by have := hmq.1; have := hAr1 hK; omega
  have hAb : 0 < K.toNat → heapBase ≤ Ar.toNat := fun hK => by
    have := hord.1; have := hA' hK; omega
  have hpsh : ps.hp ≤ heapEnd := hordps.2.1
  refine hoare_seq (R := fun r u => (r = none → u = s1) ∧ DQ H vs p s.memory r u) ?_
    (fun _ _ _ _ _ h => h.2) ?_
  · refine hoare_ite ?_ (hoare_skip fun u _ ⟨hu, _⟩ => ⟨fun _ => hu, fun _ h => by cases h⟩)
    intro u hctx ⟨hu, hc⟩
    have hK : K = BitVec.ofNat 64 2 := eq_of_then (ev_rfield_w (hu ▸ hsl1) rfl) hc
    have hK2 : K.toNat = 2 := by rw [hK]; rfl
    rw [hK2] at hAr2 hslen
    exact hoare_post (Q' := fun r u => (r = none → u = s1) ∧ DQ H vs p s.memory r u)
      (ds_ext hC hri hcn harr1 hpl1 hnl1 hT0 hT0s hpps hps1 (hA' (by omega)) (hAb (by omega)) (by omega)
      hpsh hHp hslen rfl) (fun r u _ _ h => ⟨fun e => absurd e h.1, h.2⟩) u hctx hu
  · intro u hctx ⟨hu, _⟩
    exact hoare_post (Q' := DQ H vs p s.memory) (ds_br hC hbr harr1 hpl1 hnl1 hsl1 hT0 hT0s hpps hps1
      hA' hAb hAr2 hpsh hHp hslen) (fun r u _ _ h => h.2) u hctx (hu rfl)

end InitECandidate.Solver.Spec.Mpt.Dec
