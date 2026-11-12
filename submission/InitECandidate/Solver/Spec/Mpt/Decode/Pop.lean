import InitECandidate.Solver.Spec.Mpt.Decode.Step2

/-!
# Mode 0 of the decode loop: the facts kept while the top record is finished

`PopInv M0 T hi V M`: relative to the memory `M0` at the start of the iteration, `M` changed
only cells outside the records above `T` (`[T + 88, hi)`) and outside the heap below `V`
(the top record's array, the deeper records' blocks, the witness), and the top record's
cells `T + 0 … T + 39` (link, kind, branch node, array, slot) are unchanged. Every store of
mode 0 keeps it: node stores below `T` and above `V` (`popInv_low`), the occupancy / hash
cells `T + 40`, `T + 80` (`popInv_rec`), callee fresh writes (`popInv_fresh`).

The three exits: `close_pop` (an extension or a finished branch record is popped: the
potential drops by `psi T ≥ 1`) and `close_adv` (a branch record advances to the next slot:
the potential drops by 3, the mode term rises by 2).
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

def PopInv (M0 : Mem) (T : BitVec 64) (hi V : Nat) (M : Mem) : Prop :=
  Benign (T.toNat + 88) hi V M0 M ∧ ∀ j : BitVec 64, j.toNat < 40 → M (T + j) = M0 (T + j)

theorem popInv_refl (M0 : Mem) (T : BitVec 64) (hi V : Nat) : PopInv M0 T hi V M0 :=
  ⟨benign_refl _ _ _ _, fun _ _ => rfl⟩

theorem popInv_monoV {M0 M : Mem} {T : BitVec 64} {hi V V' : Nat} (h : PopInv M0 T hi V M)
    (hV : V' ≤ V) : PopInv M0 T hi V' M :=
  ⟨benign_mono h.1 le_rfl le_rfl hV, h.2⟩

theorem popInv_low {M0 M : Mem} {T : BitVec 64} {hi V : Nat} (h : PopInv M0 T hi V M)
    (hT : T.toNat + 88 < 2 ^ 64) {A : BitVec 64} (hA : A.toNat < T.toNat)
    (hAV : A.toNat < heapBase ∨ V ≤ A.toNat) (x : HolWordLab 64) : PopInv M0 T hi V (upd M A x) := by
  refine ⟨benign_trans h.1 (benign_upd (Or.inl (by omega)) hAV), fun j hj => ?_⟩
  rw [upd_out]
  · exact h.2 j hj
  · intro e
    have := congrArg BitVec.toNat e
    rw [toNat_add_bv (by omega)] at this
    omega

theorem popInv_rec {M0 M : Mem} {T : BitVec 64} {hi V : Nat} (h : PopInv M0 T hi V M)
    (hT : T.toNat + 88 < 2 ^ 64) {k : BitVec 64} (hk1 : 40 ≤ k.toNat) (hk2 : k.toNat < 88)
    (hVT : V ≤ T.toNat) (x : HolWordLab 64) : PopInv M0 T hi V (upd M (T + k) x) := by
  have hkT : (T + k).toNat = T.toNat + k.toNat := toNat_add_bv (by omega)
  refine ⟨benign_trans h.1 (benign_upd (Or.inl (by omega)) (Or.inr (by omega))), fun j hj => ?_⟩
  rw [upd_out]
  · exact h.2 j hj
  · intro e
    have := congrArg BitVec.toNat e
    rw [toNat_add_bv (by omega), hkT] at this
    omega

theorem popInv_fresh {M0 M M' : Mem} {T : BitVec 64} {hi V : Nat} (h : PopInv M0 T hi V M)
    {q : Ptrs} (hq : q.sp ≤ T.toNat) (hhi : hi ≤ scratchEnd) (hT88 : T.toNat + 88 ≤ hi)
    (hV : V ≤ q.hp) (hf : ∀ a : BitVec 64, M' a ≠ M a → ¬ q.Allocated a.toNat) :
    PopInv M0 T hi V M' := by
  refine ⟨benign_trans h.1 (freshFoot_benign (by omega) hhi hV hf), fun j hj => ?_⟩
  rw [← h.2 j hj]
  by_contra hne
  have := hf _ hne
  unfold Ptrs.Allocated at this
  have e : (T + j).toNat = T.toNat + j.toNat := toNat_add_bv (by simp only [scratchEnd] at hhi; omega)
  rw [e] at this
  simp only [scratchEnd] at hhi this
  omega

/-! ## Generic statements on `F ∧ PopInv` states -/

/-- `F` does not read memory. -/
def MemFreeP (F : State σ → Prop) : Prop := ∀ t (m : Mem), F t → F { t with memory := m }

theorem hoare_store_low {F : State σ → Prop} (hF : MemFreeP F) {M0 : Mem} {T : BitVec 64}
    {hi V : Nat} {a e : ExpHOL 64} (hT : T.toNat + 88 < 2 ^ 64)
    (ha : ∀ t, F t → ∀ A, ev t a = some (.val (.word A)) →
      A.toNat < T.toNat ∧ (A.toNat < heapBase ∨ V ≤ A.toNat))
    (he : ∀ t, F t → ∀ v, ev t e = some v → ∃ x : BitVec 64, v = .val (.word x)) :
    Hoare σ X (fun t => F t ∧ PopInv M0 T hi V t.memory) (.store a e)
      (fun r t => r = none ∧ F t ∧ PopInv M0 T hi V t.memory) := by
  refine hoare_store fun t _ ⟨hFt, hP⟩ A v mem hA hv hmem => ⟨rfl, hF _ _ hFt, ?_⟩
  obtain ⟨x, rfl⟩ := he t hFt v hv
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  obtain ⟨h1, h2⟩ := ha t hFt A hA
  exact popInv_low hP hT h1 h2 _

theorem hoare_store_rec {F : State σ → Prop} (hF : MemFreeP F) {M0 : Mem} {T : BitVec 64}
    {hi V : Nat} {e : ExpHOL 64} {k : Nat} (hT : T.toNat + 88 < 2 ^ 64) (hk1 : 40 ≤ k)
    (hk2 : k < 88) (hVT : V ≤ T.toNat)
    (htop : ∀ t, F t → t.locals.lookup (nm "top") = some (.val (.word T)))
    (he : ∀ t, F t → ∀ v, ev t e = some v → ∃ x : BitVec 64, v = .val (.word x)) :
    Hoare σ X (fun t => F t ∧ PopInv M0 T hi V t.memory) (.store (.op .add [lv (nm "top"), cw k]) e)
      (fun r t => r = none ∧ F t ∧ PopInv M0 T hi V t.memory) := by
  refine hoare_store fun t _ ⟨hFt, hP⟩ A v mem hA hv hmem => ⟨rfl, hF _ _ hFt, ?_⟩
  rw [ev_add_cw (htop t hFt)] at hA
  cases hA
  obtain ⟨x, rfl⟩ := he t hFt v hv
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  exact popInv_rec hP hT (by simp; omega) (by simp; omega) hVT _

theorem hoare_seq_none {P R' : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64} (ha : Hoare σ X P a (fun r t => r = none ∧ R' t))
    (hb : Hoare σ X R' b Q) : Hoare σ X P (.seq a b) Q :=
  hoare_seq ha (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre hb fun _ _ h => h.2)

/-- A word-valued load. -/
theorem wordE_ld (s : State σ) (a : ExpHOL 64) :
    ∀ v, ev s (.load .one a) = some v → ∃ x : BitVec 64, v = .val (.word x) := by
  intro v hv
  obtain ⟨w, -, -, rfl⟩ := ev_load_one hv
  exact ⟨rd s.memory w, congrArg _ (mem_word _ _)⟩

theorem wordE_lw {s : State σ} {x : MlS} {w : BitVec 64} (h : s.locals.lookup x = some (.val (.word w))) :
    ∀ v, ev s (lv x) = some v → ∃ y : BitVec 64, v = .val (.word y) := by
  intro v hv; rw [ev_lv, h] at hv; cases hv; exact ⟨w, rfl⟩

/-! ## The exits -/

theorem psi_pos (M : Mem) (r : BitVec 64) : 1 ≤ psi M r := by
  unfold psi; split <;> omega

theorem heap_lt_T {M : Mem} {lo hi L U : Nat} {T : BitVec 64} (h : WChain M lo hi L U T) (hT : T ≠ 0)
    (hUlo : U ≤ lo) : (rd M (T + 24)).toNat + arrSz M T ≤ T.toNat := by
  obtain ⟨h1, -, hrec, -⟩ := wChain_unfold h hT
  have := recW_top hrec
  omega

/-- **Pop.** The top record is popped; the new result `R'` lies above its array. -/
theorem close_pop {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W) {DB : BitVec 64}
    {H sp0 k : Nat} {s t : State σ} {p q : Ptrs} {T R Mo S N G R' : BitVec 64} {U V : Nat}
    (hloc : WLoc DB T R Mo S N G s.locals) (hG : G ≠ 0) (hMo1 : Mo ≠ 1) (hMo2 : Mo ≠ 2)
    (hcore : WCore W DB H sp0 s.memory p T R Mo S N U)
    (hk : k = (p.sp - heapEnd) + wPot s.memory p.sp sp0 T + wdMode Mo + 1) (hT : T ≠ 0)
    (hq : ptrsOf t = some q) (hqo : q.Ordered) (hqsp : q.sp ≤ p.sp) (_hqhp : p.hp ≤ q.hp)
    (hlocs : ∀ x ∈ wdVars, x ≠ nm "top" → x ≠ nm "result" → t.locals.lookup x = s.locals.lookup x)
    (htop : t.locals.lookup (nm "top") = some (.val (.word (rd s.memory T))))
    (hres : t.locals.lookup (nm "result") = some (.val (.word R')))
    (hR' : (rd s.memory (T + 24)).toNat ≤ R'.toNat ∧ R'.toNat + 32 ≤ q.hp)
    (hP : PopInv s.memory T sp0 V t.memory) (hV : (rd s.memory (T + 24)).toNat ≤ V) :
    WPost W DB H sp0 k none t := by
  intro _
  obtain ⟨hdb, -, -, hmode, hsl, hcn, hgo⟩ := hloc
  obtain ⟨hsp0, hHb, hWm, hord, hsp, hHU, hUhp, hch, -, -, -⟩ := hcore
  obtain ⟨hhp, hesp⟩ := lt_heapEnd_sp hord
  obtain ⟨h1, h2, hrec, htail⟩ := wChain_unfold hch hT
  have htop' := recW_top hrec
  set A := (rd s.memory (T + 24)).toNat
  have hAT : A ≤ T.toNat + 88 := by omega
  have hB : Benign (T.toNat + 88) sp0 A s.memory t.memory := benign_mono hP.1 le_rfl le_rfl hV
  have hfr := wChain_frame (M' := t.memory) hsp0 hHb (sp0 - (T.toNat + 88)) (T.toNat + 88) A A
    (rd s.memory T) rfl hAT (fun hn => recW_top (wChain_unfold htail hn).2.2.1) hB htail
  have hmo := wChain_mono (lo' := q.sp) (U' := A) (by omega) le_rfl hfr.1
  have hW1 := w_benign hW hWm hB hrec.1
  have hloc' : WLoc DB (rd s.memory T) R' Mo S N G t.locals :=
    ⟨by rw [hlocs _ (by decide) (by decide) (by decide)]; exact hdb, htop, hres,
      by rw [hlocs _ (by decide) (by decide) (by decide)]; exact hmode,
      fun h => absurd h hMo2, fun h => absurd h hMo1,
      by rw [hlocs _ (by decide) (by decide) (by decide)]; exact hgo⟩
  refine ⟨⟨q, rd s.memory T, R', Mo, S, N, G, A, hq, hloc', hsp0, hHb, hW1, hqo, by omega,
    hrec.1, by unfold arrSz at htop'; split at htop' <;> omega, hmo.1,
    fun _ _ => Or.inr ⟨hR'.1, hR'.2⟩, fun h => absurd h hMo1, fun h => absurd h hMo2⟩, ?_⟩
  rw [wdMu_of hq hloc' hG, hk, hmo.2, hfr.2, wPot_unfold hT h1 h2]
  have := psi_pos s.memory T
  have := lt_heapEnd_sp hqo
  omega

/-- The chain after a branch record advances its slot index to `v`. -/
theorem adv_chain {M0 M : Mem} {lo hi L U : Nat} {T v : BitVec 64} (hhi : hi ≤ scratchEnd)
    (hL : heapBase ≤ L) (hUlo : U ≤ lo) (hT : T ≠ 0) (hch : WChain M0 lo hi L U T)
    (hk : rd M0 (T + 8) ≠ 1) (hP : PopInv M0 T hi ((rd M0 (T + 24)).toNat + 272) M)
    (hv : v.toNat < 16) :
    WChain (upd M (T + 32) (.word v)) lo hi L U T ∧
      wPot (upd M (T + 32) (.word v)) lo hi T =
        3 * (15 - v.toNat) + 1 + wPot M0 (T.toNat + 88) hi (rd M0 T) := by
  obtain ⟨h1, h2, hrec, htail⟩ := wChain_unfold hch hT
  have hlt : T.toNat + 88 < 2 ^ 64 := by simp only [scratchEnd] at hhi; omega
  have htop := recW_top hrec
  have hsz : arrSz M0 T = 272 := by unfold arrSz; rw [if_neg hk]
  set A := (rd M0 (T + 24)).toNat with hA
  set M' := upd M (T + 32) (.word v) with hM'
  have h32 : (T + 32).toNat = T.toNat + 32 := toNat_add_bv (by simp; omega)
  have hcell : ∀ j : BitVec 64, (j = 0 ∨ j = 8 ∨ j = 16 ∨ j = 24) → M' (T + j) = M0 (T + j) := by
    intro j hj
    rw [hM', upd_out (by rcases hj with rfl | rfl | rfl | rfl <;> bv_omega)]
    exact hP.2 j (by rcases hj with rfl | rfl | rfl | rfl <;> decide)
  have e0 : M' T = M0 T := by have := hcell 0 (Or.inl rfl); simpa using this
  have e8 := rd_eq_of (hcell 8 (by decide))
  have e16 := rd_eq_of (hcell 16 (by decide))
  have e24 := rd_eq_of (hcell 24 (by decide))
  have e32 : rd M' (T + 32) = v := by rw [hM', rd_upd, if_pos rfl]
  have hheap : ∀ b : BitVec 64, A ≤ b.toNat → b.toNat < A + 272 → M' b = M0 b := by
    intro b hb1 hb2
    rw [hM', upd_out (by intro e; subst e; rw [h32] at hb2; omega)]
    exact benign_eq hP.1 (Or.inr ⟨by have := hrec.1; omega, hb2⟩)
  have hB : Benign (T.toNat + 88) hi A M0 M' := by
    intro b hb
    by_cases e : b = T + 32
    · subst e; rw [h32]; exact ⟨Or.inl (by omega), Or.inr (by omega)⟩
    · rw [hM', upd_out e] at hb
      obtain ⟨x1, x2⟩ := hP.1 b hb
      exact ⟨x1, by omega⟩
  have hfr := wChain_frame (M' := M') hhi hL (hi - (T.toNat + 88)) (T.toNat + 88) A A
    (rd M0 T) rfl (by omega) (fun hn => recW_top (wChain_unfold htail hn).2.2.1) hB htail
  obtain ⟨hA0, -, hBr⟩ := hrec
  obtain ⟨b1, b2, -, b4⟩ := hBr hk
  refine ⟨wChain_cons h1 h2 ⟨by rw [e24]; exact hA0, fun hk' => absurd (e8 ▸ hk') hk, fun _ => ?_⟩ ?_, ?_⟩
  · rw [e24, e16, e32]
    exact ⟨b1, b2, hv, slen_frame (by omega) (fun b hb1 hb2 => hheap b hb1 (by omega)) b4⟩
  · rw [e24, rd_eq_of e0]; exact hfr.1
  · rw [wPot_unfold hT h1 h2, rd_eq_of e0, hfr.2]
    unfold psi
    rw [e8, if_neg hk, e32]

/-- **Advance.** A branch record moves to its next slot, in mode 2. -/
theorem close_adv {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W) {DB : BitVec 64}
    {H sp0 k : Nat} {s t : State σ} {p : Ptrs} {T R Mo S N G : BitVec 64} {U : Nat}
    (hloc : WLoc DB T R Mo S N G s.locals) (hG : G ≠ 0) (hMo1 : Mo ≠ 1) (hMo2 : Mo ≠ 2)
    (hcore : WCore W DB H sp0 s.memory p T R Mo S N U)
    (hk : k = (p.sp - heapEnd) + wPot s.memory p.sp sp0 T + wdMode Mo + 1) (hT : T ≠ 0)
    (hkind : rd s.memory (T + 8) ≠ 1) (hq : ptrsOf t = some p) {I' : BitVec 64}
    (hI' : I' = rd s.memory (T + 32) + 1) (hI16 : I'.toNat < 16)
    (hlocs : ∀ x ∈ wdVars, x ≠ nm "slot" → x ≠ nm "mode" → t.locals.lookup x = s.locals.lookup x)
    (hslot : t.locals.lookup (nm "slot") = some (.val (.word I')))
    (hmode : t.locals.lookup (nm "mode") = some (.val (.word 2)))
    {M3 : Mem} (hP : PopInv s.memory T sp0 ((rd s.memory (T + 24)).toNat + 272) M3)
    (hmem : t.memory = upd M3 (T + 32) (.word I')) :
    WPost W DB H sp0 k none t := by
  intro _
  obtain ⟨hdb, htop, hres, -, -, hcn, hgo⟩ := hloc
  obtain ⟨hsp0, hHb, hWm, hord, hsp, hHU, hUhp, hch, -, -, -⟩ := hcore
  obtain ⟨hhp, hesp⟩ := lt_heapEnd_sp hord
  have hUlo : U ≤ p.sp := by omega
  obtain ⟨h1, h2, hrec, -⟩ := wChain_unfold hch hT
  have hI : (rd s.memory (T + 32)).toNat < 16 := ((hrec.2.2 hkind).2.2.1)
  have hI'v : I'.toNat = (rd s.memory (T + 32)).toNat + 1 := by
    subst hI'; bv_omega
  have hadv := adv_chain hsp0 hHb hUlo hT hch hkind hP hI16
  rw [← hmem] at hadv
  have hB : Benign (T.toNat + 88) sp0 (rd s.memory (T + 24)).toNat s.memory t.memory := by
    intro b hb
    have htopr := recW_top hrec
    have hsz : arrSz s.memory T = 272 := by unfold arrSz; rw [if_neg hkind]
    by_cases e : b = T + 32
    · subst e
      rw [toNat_add_bv (by simp; simp only [scratchEnd] at hsp0; omega)]
      have : (32 : BitVec 64).toNat = 32 := rfl
      rw [this]
      exact ⟨Or.inl (by omega), Or.inr (by omega)⟩
    · rw [hmem, upd_out e] at hb
      obtain ⟨x1, x2⟩ := hP.1 b hb
      exact ⟨x1, by omega⟩
  have hW1 := w_benign hW hWm (benign_mono hB le_rfl le_rfl le_rfl) hrec.1
  have h8 : rd t.memory (T + 8) = rd s.memory (T + 8) := by
    rw [hmem, rd_upd, if_neg (by bv_omega)]
    exact rd_eq_of (hP.2 8 (by decide))
  have h32 : rd t.memory (T + 32) = I' := by rw [hmem, rd_upd, if_pos rfl]
  have hloc' : WLoc DB T R 2 I' N G t.locals :=
    ⟨by rw [hlocs _ (by decide) (by decide) (by decide)]; exact hdb,
      by rw [hlocs _ (by decide) (by decide) (by decide)]; exact htop,
      by rw [hlocs _ (by decide) (by decide) (by decide)]; exact hres, hmode, fun _ => hslot,
      fun h => absurd h (by decide),
      by rw [hlocs _ (by decide) (by decide) (by decide)]; exact hgo⟩
  refine ⟨⟨p, T, R, 2, I', N, G, U, hq, hloc', hsp0, hHb, hW1, hord, hsp, hHU, hUhp, hadv.1,
    fun _ h => absurd rfl h, fun h => absurd h (by decide),
    fun _ => ⟨hT, fun h => absurd (h8 ▸ h) hkind, fun _ => h32.symm⟩⟩, ?_⟩
  rw [wdMu_of hq hloc' hG, hk, hadv.2, wPot_unfold hT h1 h2]
  unfold psi
  rw [if_neg hkind]
  have e2 : wdMode 2 = 2 := by decide
  have e0 : wdMode Mo = 0 := by unfold wdMode; rw [if_neg hMo1, if_neg hMo2]
  rw [e2, e0]
  omega

end InitECandidate.Solver.Spec.Mpt.Dec
