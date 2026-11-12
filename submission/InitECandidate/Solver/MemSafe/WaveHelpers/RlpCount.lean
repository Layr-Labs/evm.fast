import InitECandidate.Solver.Spec.Mpt.Leaves.Slices
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop

set_option autoImplicit false

/-!
# `rlp_list_count(p, len)` returns a small count, for every `p` and `len`

The memory domain of the guest lies below `2^40` (`DomLow`, `domLow_guestCtx`). Each iteration
of `rlp_list_count` reads the item header at `p + off` (`rlp_item_header` loads `ld8 p`), and
`off` grows strictly (each total is `≥ 1`) inside `[0, len]`. So the read addresses `p + off`
(mod `2^64`) are distinct domain bytes: the offsets lie in `[0, D)` (before the address wraps)
or in `[2^64 - p, 2^64 - p + D)` (after), `D = 2^40 + 8`. The invariant `count ≤ cntS off`
(`cntS` counts the offsets below `off` in those two intervals) gives `count ≤ 2 D`.

* `funSpec_hdr_hit`, `funSpec_total_hit`: a return of `rlp_item_header(P, L)` /
  `rlp_item_total(P, L)` read the byte at `P` (`Hit memaddrs P`).
* `funSpec_count_le`: a return of `rlp_list_count` is a word `C ≤ 2^42`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State hoare_seq_eq hoare_assign_eq hoare_assign_fin)
open InitECandidate.Solver.Spec.Mpt.Leaves (TotT funSpec_rlp_item_total_tot cond_lt)

variable {σ : Type} {X : Ctx 64}

/-! ## The domain bound -/

/-- Every memory-domain cell lies below `2^40`. -/
def DomLow (X : Ctx 64) : Prop := ∀ a, X.memaddrs a → a.toNat < 2 ^ 40

theorem domLow_guestCtx : DomLow guestCtx := by
  intro a ha
  change InitE.ordinaryDomain a at ha
  unfold InitE.ordinaryDomain at ha
  obtain ⟨i, hi, rfl⟩ := (Flapjack.Compiler.Backend.StackRemove.mem_addresses _ _ _).mp ha
  have h8 : (Flapjack.Compiler.Backend.StackRemove.bytesInWord 64 : BitVec 64) =
      BitVec.ofNat 64 8 := rfl
  rw [h8, BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    BitVec.toNat_ofNat]
  simp only [InitE.sourceBase, InitE.stackStart, InitE.ramEnd, InitE.ramStart, InitE.ramSize,
    InitE.stackSize, InitE.globalsWords] at hi ⊢
  omega

theorem hit_lt {D : BitVec 64 → Prop} (hD : ∀ a, D a → a.toNat < 2 ^ 40) {w : BitVec 64}
    (h : Hit D w) : w.toNat < 2 ^ 40 + 8 := by
  rcases h with h | h
  · have := hD w h; omega
  · have := hD _ h
    rw [MemSafe.Helpers.byteAlign_toNat] at this
    omega

/-! ## Header reads -/

/-- A pure fact holds after anything. -/
theorem hoare_const {P : State σ → Prop} {b : ProgHOL 64} {φ : Prop} (h : φ) :
    Hoare σ X P b (fun _ _ => φ) := fun _ _ _ _ => h

/-- A return of `rlp_item_header(P, L)` read the byte at `P`. -/
theorem funSpec_hdr_hit (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item_header") (fun vs s r _ => ∀ v, r = .returned v →
      ∀ P L : BitVec 64, vs = [.val (.word P), .val (.word L)] → Hit s.memaddrs P) := by
  refine FunSpec.mono (Mpt.Dec.funSpec_of_hoare (R := fun vs s _ _ => ∀ P L : BitVec 64,
      vs = [.val (.word P), .val (.word L)] → Hit s.memaddrs P) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, rfl, hsA, hsB, hA, -⟩ := lookupCode_two code_rlp_item_header (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hsB
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  refine hoare_conseq (P := fun t => t = s0) (Q := fun _ _ => Hit s0.memaddrs P) ?_ (fun _ _ h => h)
    fun r t _ _ h w _ P' L' hvs => by
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl⟩ := hvs
      exact h
  unfold hdrBody
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_dec fun s _ ⟨hs, _⟩ v hv _ => ?_
  subst s
  obtain ⟨w, hw, hhit⟩ := ev_loadByte_hit hv
  rw [ev_lw hpP] at hw
  cases hw
  exact hoare_const hhit

/-- A return of `rlp_item_total(P, L)` read the byte at `P`. -/
theorem funSpec_total_hit (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item_total") (fun vs s r _ => ∀ v, r = .returned v →
      ∀ P L : BitVec 64, vs = [.val (.word P), .val (.word L)] → Hit s.memaddrs P) := by
  refine FunSpec.mono (Mpt.Dec.funSpec_of_hoare (R := fun vs s _ _ => ∀ P L : BitVec 64,
      vs = [.val (.word P), .val (.word L)] → Hit s.memaddrs P) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_item_total (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hsB
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlL : s0.locals.lookup (nm "len") = some (.val (.word L)) := by rw [hloc]; exact hB
  refine hoare_conseq (P := fun t => t = s0) (Q := fun _ _ => Hit s0.memaddrs P) ?_ (fun _ _ h => h)
    fun r t _ _ h w _ P' L' hvs => by
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl⟩ := hvs
      exact h
  unfold totalBody
  refine hoare_decCallS (funSpec_hdr_hit hC) fun s _ hs vs hvs callee v st hR _ _ => ?_
  subst s
  rw [evs_cons (ev_lw hpP) (evs_cons (ev_lw hlL) evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  exact hoare_const (hR v rfl P L rfl)

/-! ## The count -/

/-- The offsets below `O` in `[0, D)` and in `[W, W + D)`. -/
def cntS (D W O : Nat) : Nat := min O D + (min O (W + D) - min O W)

def dD : Nat := 2 ^ 40 + 8

/-- The loop state. -/
def CJ (P N : BitVec 64) (t : State σ) : Prop :=
  t.locals.lookup (nm "p") = some (.val (.word P)) ∧
    t.locals.lookup (nm "len") = some (.val (.word N)) ∧ ∃ C O : BitVec 64,
      t.locals.lookup (nm "count") = some (.val (.word C)) ∧
      t.locals.lookup (nm "off") = some (.val (.word O)) ∧ O.toNat ≤ N.toNat ∧
      C.toNat ≤ cntS dD (2 ^ 64 - P.toNat) O.toNat

theorem cj_restore {P N : BitVec 64} {t : State σ} (old : Option (ValueHOL 64)) (h : CJ P N t) :
    CJ P N { t with locals := t.locals.resVarEq (nm "total", old) } := by
  obtain ⟨h1, h2, C, O, h3, h4, h5, h6⟩ := h
  exact ⟨by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h1,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h2, C, O,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h3,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h4, h5, h6⟩

theorem cntS_step {P O T C : Nat} (hP : P < 2 ^ 64) (hO : O < 2 ^ 64) (hT : 1 ≤ T)
    (hC : C ≤ cntS dD (2 ^ 64 - P) O) (hhit : (P + O) % 2 ^ 64 < dD) :
    C + 1 ≤ cntS dD (2 ^ 64 - P) (O + T) := by
  unfold cntS at *
  unfold dD at *
  omega

theorem cntS_le (W O : Nat) : cntS dD W O ≤ 2 ^ 41 + 16 := by
  unfold cntS dD; omega

theorem count_body_le (hC : X.code.lookup = guestCode) (hD : DomLow X) {P N : BitVec 64} :
    Hoare σ X (fun t => CJ P N t ∧ CondTrue t countCond) countLoopBody
      (fun r t => r = none ∧ CJ P N t) := by
  intro s hs ⟨⟨hpP, hlN, C, O, hcC, hoO, hON, hCO⟩, hc⟩
  have hOlt := cond_lt (ev_lw hoO) (ev_lw hlN) hc
  refine (?_ : Hoare σ X (fun t => t = s) countLoopBody (fun r t => r = none ∧ CJ P N t)) s hs rfl
  unfold countLoopBody
  refine hoare_decCallS ((funSpec_rlp_item_total_tot hC).and (funSpec_total_hit hC))
    fun u _ hu vs hvs callee v st ⟨hR1, hR2⟩ _ _ => ?_
  subst u
  rw [evs_cons (ev_add2 (ev_lw hpP) (ev_lw hoO)) (evs_cons (ev_sub2 (ev_lw hlN) (ev_lw hoO))
    evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨T, rfl, -, h1, h2⟩ := hR1 v rfl _ _ rfl
  have hhit := hR2 _ rfl _ _ rfl
  have hdom : ∀ a, (callEntryStateHOLFinite s callee).memaddrs a → a.toNat < 2 ^ 40 :=
    fun a ha => hD a (hs.2.1 ▸ ha)
  have hlt := hit_lt hdom hhit
  have hNO : (N - O).toNat = N.toNat - O.toNat := by bv_omega
  rw [hNO] at h2
  have hT1 : 1 ≤ T.toNat := by omega
  set t1 := setVarHOLFinite (nm "total") (.val (.word T)) { st with locals := s.locals }
  refine hoare_conseq (P := fun t => t = t1) (Q := fun r t => r = none ∧ CJ P N t) ?_
    (fun _ _ h => h) (fun r t _ _ ⟨hr, hI⟩ => ⟨hr, cj_restore _ hI⟩)
  have hl1 : ∀ y, y ≠ nm "total" → t1.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hoO1 : t1.locals.lookup (nm "off") = some (.val (.word O)) := by
    rw [hl1 _ (by decide)]; exact hoO
  refine hoare_seq_eq (hoare_assign_eq (s0 := t1) (x := nm "off")
    (ev_add2 (ev_lw hoO1) (ev_lw (lk_set_self _ _ _)))) ?_
  have hcC1 : (setVarHOLFinite (nm "off") (.val (.word (O + T))) t1).locals.lookup (nm "count") =
      some (.val (.word C)) := by
    rw [lk_set_ne _ _ (by decide), hl1 _ (by decide)]; exact hcC
  refine hoare_assign_fin (ev_add2 (ev_lw hcC1) (ev_cw _ 1)) ⟨rfl, ?_⟩
  have hOT : (O + T).toNat = O.toNat + T.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  have hstep := cntS_step P.isLt O.isLt hT1 hCO (by
    have e : (P + O).toNat = (P.toNat + O.toNat) % 2 ^ 64 := BitVec.toNat_add P O
    rw [← e]; unfold dD; exact hlt)
  have hCs := cntS_le (2 ^ 64 - P.toNat) (O.toNat + T.toNat)
  have hC1 : (C + BitVec.ofNat 64 1).toNat = C.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]
    omega
  refine ⟨?_, ?_, C + BitVec.ofNat 64 1, O + T, lk_set_self _ _ _, ?_, by omega, ?_⟩
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hl1 _ (by decide)]; exact hpP
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hl1 _ (by decide)]; exact hlN
  · rw [lk_set_ne _ _ (by decide), lk_set_self]
  · rw [hC1, hOT]; exact hstep

/-- **A return of `rlp_list_count(p, len)` is a word `C ≤ 2^42`**, for every `p` and `len`. -/
theorem funSpec_count_le (hC : X.code.lookup = guestCode) (hD : DomLow X) :
    FunSpec σ X (nm "rlp_list_count") (fun _ _ r _ => ∀ v, r = .returned v →
      ∃ C : BitVec 64, v = .val (.word C) ∧ C.toNat ≤ 2 ^ 42) := by
  intro vs body callee rs hl s0 hs0 hloc r hr v hv
  subst hv
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_list_count (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsB
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlN : s0.locals.lookup (nm "len") = some (.val (.word N)) := by rw [hloc]; exact hB
  suffices HH : Hoare σ X (fun t => t = s0) countBody (fun r _ => ∀ v, r = some (.returned v) →
      ∃ C : BitVec 64, v = .val (.word C) ∧ C.toNat ≤ 2 ^ 42) by
    have := HH s0 hs0 rfl (by rw [hr]; trivial)
    rw [hr] at this
    exact this _ rfl
  unfold countBody
  refine hoare_dec fun s1 _ hs1 v1 hv1 _ => ?_
  subst s1
  rw [ev_cw] at hv1; cases hv1
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) →
      ∃ C : BitVec 64, v = .val (.word C) ∧ C.toNat ≤ 2 ^ 42) ?_
    (fun _ _ h => h) (fun _ _ _ _ h => h)
  refine hoare_dec fun s2 _ hs2 v2 hv2 _ => ?_
  subst hs2
  rw [ev_cw] at hv2; cases hv2
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) →
      ∃ C : BitVec 64, v = .val (.word C) ∧ C.toNat ≤ 2 ^ 42) ?_
    (fun _ _ h => h) (fun _ _ _ _ h => h)
  refine hoare_seq (R := fun r t => r = none ∧ ∃ C : BitVec 64,
      t.locals.lookup (nm "count") = some (.val (.word C)) ∧ C.toNat ≤ 2 ^ 42) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (P := CJ P N) ?_ fun t _ ht => ?_
    · refine hoare_while (fun _ h => h) (hoare_post (count_body_le hC hD)
        fun r t _ _ ⟨hr, hI⟩ => ⟨fun _ => hI, fun h => by subst hr; exact absurd h (by simp),
          fun h => by subst hr; exact absurd h (by simp), fun v h => by subst hr; exact absurd h (by simp)⟩)
        fun t _ ⟨_, _, C, O, hcC, _, _, hCO⟩ _ => ⟨rfl, C, hcC, by
          have := cntS_le (2 ^ 64 - P.toNat) O.toNat
          omega⟩
    · subst ht
      refine ⟨?_, ?_, BitVec.ofNat 64 0, BitVec.ofNat 64 0, ?_, lk_set_self _ _ _, by simp, by simp⟩
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hpP
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hlN
      · rw [lk_set_ne _ _ (by decide), lk_set_self]
  · refine hoare_return fun t _ ⟨_, C, hcC, hle⟩ w hw => fun w' hw' => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw'
    subst hw'
    rw [ev_lv, hcC] at hw
    cases hw
    exact ⟨C, rfl, hle⟩

end InitECandidate.Solver.MemSafe.WaveHelpers
