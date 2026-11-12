import InitECandidate.Solver.Spec.Mpt.Leaves.FinCode

/-!
# The footprint of `keccak256`

```
fun 1 keccak256(1 p, 1 n, 1 out) {
  var stp = keccak_st; memzero(stp, 200); var i = 0;
  while i + 136 <=+ n { keccak_absorb_block(stp, p + i); i = i + 136; }
  var rem = n - i;
  memzero(keccak_pad, 136); memcpy(keccak_pad, p + i, rem);
  st8 keccak_pad + rem, 1; st8 keccak_pad + 135, (ld8 (keccak_pad + 135)) | 128;
  keccak_absorb_block(stp, keccak_pad);
  if (out & 7) == 0 { st out, lds stp; …; st out + 24, lds (stp + 24); } else { memcpy(out, stp, 32); }
  return 0; }
```

`ret_keccak256`: for **every** `p`, `n`, a return keeps the globals and writes only the sponge
`[ks, ks + 200)`, the pad `[kp, kp + 136)` (`KIn ks kp`, the words of `keccak_st` / `keccak_pad`,
8-aligned and not wrapping) and the cells overlapping `[out, out + 32)`.

The block loop keeps `i ≤ n` (as numbers) without any bound on `n`: the guard `i + 136 <=+ n`
gives `(i + 136) mod 2^64 ≤ n`, which is the new `i`. At the exit the guard is false,
`n < (i + 136) mod 2^64`; a wrapped `i + 136` is below `136` while `n ≥ i ≥ 2^64 - 136`, so it
does not wrap and `rem = n - i < 136` (`add136_exit`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State)
open InitECandidate.Solver.MemSafe.Helpers (BWPost AlignedDom Locals byteAlign_toNat)

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd Overlap ModifiesOnly gword)

/-! ## The keccak cells -/

/-- The sponge `[ks, ks + 200)` and the pad `[kp, kp + 136)`. -/
def KIn (ks kp a : BitVec 64) : Prop :=
  (ks.toNat ≤ a.toNat ∧ a.toNat < ks.toNat + 200) ∨ (kp.toNat ≤ a.toNat ∧ a.toNat < kp.toNat + 136)

/-- The keccak globals hold aligned words whose buffers do not wrap. -/
def KOK (s : State σ) (ks kp : BitVec 64) : Prop :=
  gword s gKst = some ks ∧ gword s gKpad = some kp ∧ ks.toNat % 8 = 0 ∧ kp.toNat % 8 = 0 ∧
    ks.toNat + 200 < 2 ^ 64 ∧ kp.toNat + 136 < 2 ^ 64

theorem kIn_kbuf {s : State σ} {ks kp a : BitVec 64} (hK : KOK s ks kp) (h : KIn ks kp a) :
    KBuf s a := by
  rcases h with h | h
  · exact Or.inl ⟨ks, hK.1, h⟩
  · exact Or.inr ⟨kp, hK.2.1, h⟩

theorem ovl_in {b n : Nat} {a : BitVec 64} (hb : b % 8 = 0) (h : Overlap b n a) :
    b ≤ a.toNat ∧ a.toNat < b + n := by
  unfold Overlap at h; omega

theorem kR_in {S : BitVec 64} {K : Nat} (hS : S.toNat + K < 2 ^ 64) {a : BitVec 64}
    (h : KR S K a) : S.toNat ≤ a.toNat ∧ a.toNat < S.toNat + K := by
  obtain ⟨k, hk, rfl⟩ := h
  rw [toNat_add_k (by omega)]; omega

theorem add136_exit {I N : BitVec 64} (hIN : I.toNat ≤ N.toNat)
    (h : N.toNat < (I + BitVec.ofNat 64 136).toNat) : N.toNat - I.toNat < 136 := by
  have hI := I.isLt
  have hN := N.isLt
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (show 136 < 2 ^ 64 by decide)] at h
  by_cases hw : I.toNat + 136 < 2 ^ 64
  · rw [Nat.mod_eq_of_lt hw] at h; omega
  · exfalso
    have : (I.toNat + 136) % 2 ^ 64 = I.toNat + 136 - 2 ^ 64 := by
      rw [Nat.mod_eq_sub_mod (by omega), Nat.mod_eq_of_lt (by omega)]
    omega

/-! ## Hoare helpers in the footprint style -/

theorem ev_gv' (s : State σ) (x : MlS) : ev s (gv x) = s.globals.lookup x := rfl

/-- A call `f(args);` whose returns keep the globals and change only cells of `Rf`. -/
theorem hoare_callBW {L L' : Locals → Prop} {f : MlS} {args : List (ExpHOL 64)}
    {Rf : BitVec 64 → Prop} {s0 : State σ}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    (h : ∀ t : State σ, L t.locals → BWPost Rf s0 t → ∀ vs, evs t args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite t callee) (.returned v) st →
      st.globals = t.globals ∧ (∀ a, st.memory a ≠ t.memory a → Rf a))
    (hL : ∀ m, L m → L' m) :
    Hoare σ X (fun t => L t.locals ∧ BWPost Rf s0 t) (callD f args)
      (fun r t => r = none ∧ L' t.locals ∧ BWPost Rf s0 t) := by
  refine hoare_callD hf fun t _ ⟨hL0, hg, hm⟩ vs hvs callee v st hR _ => ?_
  obtain ⟨hg', hm'⟩ := h t hL0 ⟨hg, hm⟩ vs hvs callee v st hR
  refine ⟨rfl, hL _ hL0, hg'.trans hg, fun a ha => ?_⟩
  show st.memory a = s0.memory a
  by_cases e : st.memory a = t.memory a
  · rw [e]; exact hm a ha
  · exact absurd (hm' a e) ha

/-- Changed cells of a `ModifiesOnly`. -/
theorem mod_ne {R : BitVec 64 → Prop} {m m' : MemSafe.Mem} (h : ModifiesOnly R m m') {a : BitVec 64}
    (ha : m' a ≠ m a) : R a := by
  by_contra hn; exact ha (h a hn)

/-- A byte store whose aligned cell lies in `Rf`. -/
theorem hoare_stByteBW {L : Locals → Prop} {a e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    (h : ∀ t : State σ, L t.locals → BWPost Rf s0 t → ∀ w, ev t a = some (.val (.word w)) →
      Rf (panByteAlignHOL w)) :
    Hoare σ X (fun t => L t.locals ∧ BWPost Rf s0 t) (.storeByte a e)
      (fun r t => r = none ∧ L t.locals ∧ BWPost Rf s0 t) := by
  refine Spec.Inv.hoare_storeByte fun t _ ⟨hL, hg, hm⟩ w x mem hw _ hmem => ?_
  obtain ⟨-, rfl⟩ := Spec.Inv.storeByte_eq hmem
  have hR := h t hL ⟨hg, hm⟩ w hw
  refine ⟨rfl, hL, hg, fun b hb => ?_⟩
  show Spec.Inv.upd t.memory _ _ b = _
  have hne : b ≠ panByteAlignHOL w := fun e => hb (e ▸ hR)
  rw [Spec.Inv.upd_ne hne]
  exact hm b hb

/-- A one-word store of a loaded word at an address in `Rf`. -/
theorem hoare_stLoadBW (hA : AlignedDom X) {L : Locals → Prop} {a b : ExpHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ}
    (h : ∀ t : State σ, L t.locals → BWPost Rf s0 t → ∀ w, ev t a = some (.val (.word w)) →
      w.toNat % 8 = 0 → Rf w) :
    Hoare σ X (fun t => L t.locals ∧ BWPost Rf s0 t) (.store a (.load .one b))
      (fun r t => r = none ∧ L t.locals ∧ BWPost Rf s0 t) := by
  refine hoare_store fun t hs ⟨hL, hg, hm⟩ w v mem hw hv hmem => ?_
  obtain ⟨y, -, -, rfl⟩ := ev_load1_inv' hv
  obtain ⟨hd, rfl⟩ := Spec.Inv.store_word_dom hmem
  have hR := h t hL ⟨hg, hm⟩ w hw (hA w (hs.2.1 ▸ hd))
  refine ⟨rfl, hL, hg, fun c hc => ?_⟩
  show Spec.Inv.upd t.memory _ _ c = _
  have hne : c ≠ w := fun e => hc (e ▸ hR)
  rw [Spec.Inv.upd_ne hne]
  exact hm c hc

/-! ## The locals -/

structure KL (P N O S : BitVec 64) (m : Locals) : Prop where
  p : m.lookup (nm "p") = some (.val (.word P))
  n : m.lookup (nm "n") = some (.val (.word N))
  out : m.lookup (nm "out") = some (.val (.word O))
  stp : m.lookup (nm "stp") = some (.val (.word S))

theorem kL_upd {P N O S : BitVec 64} {m : Locals} (h : KL P N O S m) {x : MlS}
    (h1 : x ≠ nm "p") (h2 : x ≠ nm "n") (h3 : x ≠ nm "out") (h4 : x ≠ nm "stp") (v : ValueHOL 64) :
    KL P N O S (m.update (x, v)) :=
  ⟨by rw [lookup_update_ne _ _ h1]; exact h.p, by rw [lookup_update_ne _ _ h2]; exact h.n,
   by rw [lookup_update_ne _ _ h3]; exact h.out, by rw [lookup_update_ne _ _ h4]; exact h.stp⟩

/-! ## The body -/

/-- The loop invariant: `i ≤ n`. -/
def KI (P N O S : BitVec 64) (m : Locals) : Prop :=
  KL P N O S m ∧ ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat

theorem hoare_kTail (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    {s0 : State σ} {P N O ks kp I Rm : BitVec 64} (hK : KOK s0 ks kp) (hO : O.toNat + 32 < 2 ^ 64)
    (hRm : Rm.toNat < 136) :
    Hoare σ X (fun t => (KL P N O ks t.locals ∧ t.locals.lookup (nm "i") = some (.val (.word I)) ∧
        t.locals.lookup (nm "rem") = some (.val (.word Rm))) ∧
        BWPost (fun a => KIn ks kp a ∨ Overlap O.toNat 32 a) s0 t) kTail
      (fun r t => ∀ v, r = some (.returned v) →
        BWPost (fun a => KIn ks kp a ∨ Overlap O.toNat 32 a) s0 t) := by
  obtain ⟨hks, hkp, hks8, hkp8, hks2, hkp2⟩ := hK
  have hgkp : ∀ t : State σ, t.globals = s0.globals →
      ev t (gv (nm "keccak_pad")) = some (.val (.word kp)) := fun t hg => by
    show t.globals.lookup _ = _
    rw [hg]; exact MemSafe.AllocImpl.lookup_of_gword hkp
  let L : Locals → Prop := fun m => KL P N O ks m ∧ m.lookup (nm "i") = some (.val (.word I)) ∧
    m.lookup (nm "rem") = some (.val (.word Rm))
  have hpad : ∀ a : BitVec 64, kp.toNat ≤ a.toNat → a.toNat < kp.toNat + 136 →
      KIn ks kp a ∨ Overlap O.toNat 32 a := fun a h1 h2 => Or.inl (Or.inr ⟨h1, h2⟩)
  have hRm' : (kp + Rm).toNat = kp.toNat + Rm.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  unfold kTail
  -- `memzero(keccak_pad, 136)`
  refine hoare_seq (hoare_callBW (L := L) (footD_memzero hC hA hT) ?_ (fun _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t hL hbw vs hvs callee v st hR
    rw [evs_cons (hgkp t hbw.1) (evs_cons (ev_cw _ 136) evs_nil)] at hvs
    cases hvs
    obtain ⟨-, hg, hm, -⟩ := hR (by simp [Good]) _ _ rfl
    refine ⟨hg, fun a ha => ?_⟩
    have := ovl_in hkp8 (mod_ne hm ha)
    exact hpad a this.1 (by have h136 : (BitVec.ofNat 64 136).toNat = 136 := rfl; omega)
  refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t) ?_ fun _ _ h => h.2
  -- `memcpy(keccak_pad, p + i, rem)`
  refine hoare_seq (hoare_callBW (L := L) (footD_memcpy hC hA hT) ?_ (fun _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t hL hbw vs hvs callee v st hR
    rw [evs_cons (hgkp t hbw.1) (evs_cons (ev_add2 (ev_lw hL.1.p) (ev_lw hL.2.1))
      (evs_cons (ev_lw hL.2.2) evs_nil))] at hvs
    cases hvs
    obtain ⟨-, hg, hm, -⟩ := hR (by simp [Good]) _ _ _ rfl
    refine ⟨hg, fun a ha => ?_⟩
    have := ovl_in hkp8 (mod_ne hm ha)
    exact hpad a this.1 (by omega)
  refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t) ?_ fun _ _ h => h.2
  -- `st8 keccak_pad + rem, 1`
  refine hoare_seq (hoare_stByteBW ?_) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t hL hbw w hw
    rw [ev_add2 (hgkp t hbw.1) (ev_lw hL.2.2)] at hw
    cases hw
    refine hpad _ ?_ ?_ <;> rw [byteAlign_toNat, hRm'] <;> omega
  refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t) ?_ fun _ _ h => h.2
  -- `st8 keccak_pad + 135, …`
  refine hoare_seq (hoare_stByteBW ?_) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t hL hbw w hw
    rw [ev_add2 (hgkp t hbw.1) (ev_cw _ 135)] at hw
    cases hw
    have e : (kp + BitVec.ofNat 64 135).toNat = kp.toNat + 135 := toNat_add_k (by omega)
    refine hpad _ ?_ ?_ <;> rw [byteAlign_toNat, e] <;> omega
  refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t) ?_ fun _ _ h => h.2
  -- `keccak_absorb_block(stp, keccak_pad)`
  refine hoare_seq (hoare_callBW (L := L) (foot_keccak_absorb_block hC) ?_ (fun _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t hL hbw vs hvs callee v st hR
    rw [evs_cons (ev_lw hL.1.stp) (evs_cons (hgkp t hbw.1) evs_nil)] at hvs
    cases hvs
    obtain ⟨hg, hm, -⟩ := hR (by simp [Good]) trivial
    refine ⟨hg, fun a ha => ?_⟩
    obtain ⟨S, B, hSB, hk⟩ := mod_ne hm ha
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hSB
    obtain ⟨rfl, rfl⟩ := hSB
    exact Or.inl (Or.inl (kR_in (by omega) hk))
  refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t) ?_ fun _ _ h => h.2
  -- the output, then `return 0`
  refine hoare_seq (R := fun r t => r = none ∧ L t.locals ∧ BWPost _ s0 t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoare_return fun t _ ⟨_, _, hbw⟩ v _ w _ => hbw)
  have hout : ∀ (k : Nat), k < 4 → ∀ w : BitVec 64, w = O + BitVec.ofNat 64 (8 * k) →
      w.toNat % 8 = 0 → KIn ks kp w ∨ Overlap O.toNat 32 w := by
    intro k hk w hw h8
    subst hw
    have e : (O + BitVec.ofNat 64 (8 * k)).toNat = O.toNat + 8 * k := toNat_add_k (by omega)
    refine Or.inr ⟨h8, ?_, ?_⟩ <;> rw [e] <;> omega
  unfold kOutIte
  refine hoare_ite ?_ ?_
  · refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t) ?_ fun _ _ h => h.1
    refine hoare_seq (hoare_stLoadBW hA ?_) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · intro t hL _ w hw h8
      rw [ev_lw hL.1.out] at hw
      cases hw
      exact hout 0 (by decide) _ (by simp) h8
    refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t) ?_ fun _ _ h => h.2
    refine hoare_seq (hoare_stLoadBW hA ?_) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · intro t hL _ w hw h8
      rw [ev_add2 (ev_lw hL.1.out) (ev_cw _ 8)] at hw
      cases hw
      exact hout 1 (by decide) _ rfl h8
    refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t) ?_ fun _ _ h => h.2
    refine hoare_seq (hoare_stLoadBW hA ?_) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · intro t hL _ w hw h8
      rw [ev_add2 (ev_lw hL.1.out) (ev_cw _ 16)] at hw
      cases hw
      exact hout 2 (by decide) _ rfl h8
    refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t) ?_ fun _ _ h => h.2
    refine hoare_stLoadBW hA ?_
    intro t hL _ w hw h8
    rw [ev_add2 (ev_lw hL.1.out) (ev_cw _ 24)] at hw
    cases hw
    exact hout 3 (by decide) _ rfl h8
  · refine hoare_pre (P := fun t => L t.locals ∧ BWPost _ s0 t)
      (hoare_callBW (L := L) (footD_memcpy hC hA hT) ?_ (fun _ h => h)) fun _ _ h => h.1
    intro t hL hbw vs hvs callee v st hR
    rw [evs_cons (ev_lw hL.1.out) (evs_cons (ev_lw hL.1.stp) (evs_cons (ev_cw _ 32) evs_nil))] at hvs
    cases hvs
    obtain ⟨-, hg, hm, -⟩ := hR (by simp [Good]) _ _ _ rfl
    exact ⟨hg, fun a ha => Or.inr (mod_ne hm ha)⟩

theorem hoare_kBody (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    {s0 : State σ} {P N O ks kp : BitVec 64}
    (hp : s0.locals.lookup (nm "p") = some (.val (.word P)))
    (hn : s0.locals.lookup (nm "n") = some (.val (.word N)))
    (ho : s0.locals.lookup (nm "out") = some (.val (.word O)))
    (hK : KOK s0 ks kp) (hO : O.toNat + 32 < 2 ^ 64) :
    Hoare σ X (fun t => t = s0) kBody (fun r t => ∀ v, r = some (.returned v) →
      BWPost (fun a => KIn ks kp a ∨ Overlap O.toNat 32 a) s0 t) := by
  have hK' := hK
  obtain ⟨hks, hkp, hks8, hkp8, hks2, hkp2⟩ := hK'
  unfold kBody
  refine hoare_decL (fun r t L h => h) fun s1 _ hs1 v1 hv1 _ => ?_
  subst s1
  rw [ev_gv', show nm "keccak_st" = gKst from rfl, MemSafe.AllocImpl.lookup_of_gword hks] at hv1
  cases hv1
  have hL1 : KL P N O ks (setVarHOLFinite (nm "stp") (.val (.word ks)) s0).locals :=
    ⟨by rw [lk_set_ne _ _ (by decide)]; exact hp, by rw [lk_set_ne _ _ (by decide)]; exact hn,
     by rw [lk_set_ne _ _ (by decide)]; exact ho, lk_set_self _ _ _⟩
  let Rf : BitVec 64 → Prop := fun a => KIn ks kp a ∨ Overlap O.toNat 32 a
  -- `memzero(stp, 200)`
  refine hoare_seq (hoare_pre (hoare_callBW (L := KL P N O ks) (Rf := Rf) (s0 := s0)
      (footD_memzero hC hA hT) ?_
      (fun _ h => h)) fun t _ ht => ?_) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t hL hbw vs hvs callee v st hR
    rw [evs_cons (ev_lw hL.stp) (evs_cons (ev_cw _ 200) evs_nil)] at hvs
    cases hvs
    obtain ⟨-, hg, hm, -⟩ := hR (by simp [Good]) _ _ rfl
    refine ⟨hg, fun a ha => ?_⟩
    have := ovl_in hks8 (mod_ne hm ha)
    exact Or.inl (Or.inl ⟨this.1, by have h200 : (BitVec.ofNat 64 200).toNat = 200 := rfl; omega⟩)
  · subst ht; exact ⟨hL1, rfl, fun _ _ => rfl⟩
  -- `var i = 0`
  refine hoare_decL (fun r t L h => h) fun s2 _ ⟨_, hL2, hbw2⟩ v2 hv2 _ => ?_
  rw [ev_cw] at hv2
  cases hv2
  let Inv : State σ → Prop := fun t => KI P N O ks t.locals ∧ BWPost Rf s0 t
  refine hoare_seq (R := fun r t => r = none ∧ Inv t ∧ ev t kCond = some (.val (.word 0))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (P := Inv) (hoare_while (fun s h => h) ?_
      (fun t _ h hc => ⟨rfl, h, hc⟩)) fun t _ ht => ?_
    · -- the block step
      refine hoare_post (Q := fun r t => r = none ∧ Inv t) ?_ fun r t _ _ ⟨hr, h⟩ =>
        ⟨fun _ => h, fun h' => (by subst hr; cases h'), fun h' => (by subst hr; cases h'),
          fun v h' => (by subst hr; cases h')⟩
      unfold kLoopBody
      refine hoare_seq (R := fun r t => r = none ∧ KL P N O ks t.locals ∧ (∃ I : BitVec 64,
          t.locals.lookup (nm "i") = some (.val (.word I)) ∧
          (I + BitVec.ofNat 64 136).toNat ≤ N.toNat) ∧ BWPost Rf s0 t) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_callD (foot_keccak_absorb_block hC)
          fun t _ ⟨⟨⟨hL, I, hi, hIN⟩, hg, hm⟩, hc⟩ vs hvs callee v st hR _ => ?_
        rw [evs_cons (ev_lw hL.stp) (evs_cons (ev_add2 (ev_lw hL.p) (ev_lw hi)) evs_nil)] at hvs
        cases hvs
        obtain ⟨hg', hm', -⟩ := hR (by simp [Good]) trivial
        obtain ⟨wc, hwc, hwc0⟩ := condTrue_iff.mp hc
        have hcI := notLower_true' (cmp_val_true hwc hwc0 (ev_lw hL.n)
          (ev_add2 (ev_lw hi) (ev_cw _ 136)))
        refine ⟨rfl, hL, ⟨I, hi, hcI⟩, hg'.trans hg, fun a ha => ?_⟩
        show st.memory a = s0.memory a
        by_cases e : st.memory a = t.memory a
        · rw [e]; exact hm a ha
        · obtain ⟨S, B, hSB, hk⟩ := mod_ne hm' e
          simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hSB
          obtain ⟨rfl, rfl⟩ := hSB
          exact absurd (Or.inl (Or.inl (kR_in (by omega) hk))) ha
      · refine hoare_assign fun t _ ⟨_, hL, ⟨I, hi, hcI⟩, hbw⟩ v hv _ => ?_
        rw [ev_add2 (ev_lw hi) (ev_cw _ 136)] at hv
        cases hv
        exact ⟨rfl, ⟨kL_upd hL (by decide) (by decide) (by decide) (by decide) _, _,
          lk_set_self _ _ _, hcI⟩, hbw⟩
    · subst ht
      exact ⟨⟨kL_upd hL2 (by decide) (by decide) (by decide) (by decide) _, _, lk_set_self _ _ _,
        by simp⟩, hbw2⟩
  -- after the loop: `var rem = n - i`
  refine hoare_decL (fun r t L h => h) fun s3 _ ⟨_, ⟨⟨hL3, I, hi3, hIN⟩, hbw3⟩, hc3⟩ v3 hv3 _ => ?_
  rw [ev_sub2 (ev_lw hL3.n) (ev_lw hi3)] at hv3
  cases hv3
  have hexit := add136_exit hIN (notLower_false' (cmp_val_false hc3 (ev_lw hL3.n)
    (ev_add2 (ev_lw hi3) (ev_cw _ 136))))
  have hRm : (N - I).toNat = N.toNat - I.toNat := by
    rw [BitVec.toNat_sub]
    have := N.isLt
    rw [show 2 ^ 64 - I.toNat + N.toNat = 2 ^ 64 + (N.toNat - I.toNat) by omega, Nat.add_mod_left,
      Nat.mod_eq_of_lt (by omega)]
  refine hoare_pre (hoare_kTail hC hA hT (P := P) (N := N) (I := I) (Rm := N - I) hK hO (by omega)) fun t _ ht => ?_
  subst ht
  exact ⟨⟨kL_upd hL3 (by decide) (by decide) (by decide) (by decide) _,
    by rw [lk_set_ne _ _ (by decide)]; exact hi3, lk_set_self _ _ _⟩, hbw3⟩

/-- **`keccak256(p, n, out)`**, for all `p` and `n`: a return keeps the globals and writes only
the keccak sponge and pad and the cells overlapping `[out, out + 32)`. -/
theorem ret_keccak256 (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X) :
    FunSpec σ X (nm "keccak256") (fun vs s r t => ∀ v, r = .returned v →
      ∀ (P N O ks kp : BitVec 64), vs = [.val (.word P), .val (.word N), .val (.word O)] →
        KOK s ks kp → O.toNat + 32 < 2 ^ 64 →
        BWPost (fun a => KIn ks kp a ∨ Overlap O.toNat 32 a) s t) := by
  intro vs body callee rs hl s0 hs hloc r hr v hv P N O ks kp hvs hK hO
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, -, -, -, hla, hlb, hlc⟩ :=
    lookupCode_three code_keccak256 (by decide) (by decide) (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  have H := hoare_kBody hC hA hT (s0 := s0) (by rw [hloc]; exact hla) (by rw [hloc]; exact hlb)
    (by rw [hloc]; exact hlc) hK hO s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr] at H
  exact H v (by rw [hv])

end InitECandidate.Solver.Spec.Mpt.Leaves
