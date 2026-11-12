import InitECandidate.Solver.MemSafe.Hooks.Laws
import InitECandidate.Solver.Spec.Inv.HtabNew

/-!
# `htab_new` as a constructor entry of the summary table

`csumm_htab_new`: for each constant instance `htab_new(KL, CP)` (`0 < KL ≤ 2^16`,
`CP ≤ 2^20`), the capability summary with result `fits (ptr th)` for a heap header type `th`
of key length `KL`: the returned header and one
object covering its three arrays are added to `Γ` as fresh objects (header `th`, arrays of the
owner-encoded type `tOwn H0`, interface rev. 6), the header's hook holds (`TableWF`, arrays
owned, no leaf values).

The proof combines two specs of the same runs:

* the **skeleton**: the checker's summary of `htab_new` under the weakened signature (result
  unconstrained, `grows := false`). It covers every good non-abortive result (in particular the
  exceptions) and gives `G` over a `Γ'` whose objects lie in the old ones;
* the htab agent's **functional spec** `funSpec_htab_new` (returns only): the result is a
  well-formed empty table whose region is the freshly allocated block `[H0, H1)`.

On a return the two objects are added to `Γ'` one by one (`Frames.G_addObj`); every other
result keeps `Γ'`.

`HtabHooks H`: what the table entries need of the hook family (a table header's hook is
established by `TabOK`, array hooks are trivial); `htabHooks_guest`.
-/

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.AllocImpl
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- What the table entries need of the hook family: a header's hook is `TabOK` (`make`, `get`),
array hooks are trivial, and (rev. 6, C-b′) the footprint of every other object misses a
table's region (`sep`). -/
structure HtabHooks (H : Hooks σ) : Prop where
  make : ∀ (Γ : Gam) (s : State σ) (o : Obj), o ∈ Γ → GamOK Γ → hkOf o.ty = .tab → TabOK Γ s o →
    H.wf Γ s o
  arr : ∀ (Γ : Gam) (s : State σ) (o : Obj), IsArrTy o.ty → H.wf Γ s o
  get : ∀ (Γ : Gam) (s : State σ) (o : Obj), hkOf o.ty = .tab → H.wf Γ s o → tabW Γ s o
  sep : ∀ (Γ : Gam) (s : State σ) (o o2 : Obj) (a : BitVec 64), hkOf o.ty = .tab → H.wf Γ s o →
    o2 ∈ Γ → o2 ≠ o → H.wf Γ s o2 → H.fp Γ s o2 a → Spec.Inv.TableRegion s.memory o.base a → False

theorem htabHooks_guest : HtabHooks (guestHooks (σ := σ)) := by
  refine ⟨fun Γ s o ho hG hk ht => (gwf_tab hk).2 ⟨ho, hG, ht⟩, fun Γ s o ht => ?_,
    fun Γ s o hk hw => (gwf_tab hk).1 hw, fun Γ s o o2 a hk hw ho2 hne _ hf ha => ?_⟩
  · show gwf Γ s o
    exact gwf_none (hkOf_none (arr_ne ht).1 (fun h => arr_not_hdr ht (hkOf_of_tab h)))
  · have hw' : tabW Γ s o := (gwf_tab hk).1 hw
    rw [guestHooks_fp] at hf
    cases hk2 : hkOf o2.ty with
    | ev =>
      obtain ⟨-, k, hkk, rfl⟩ := (gfp_ev hk2).1 hf
      have ht2 := hkOf_ev hk2
      obtain ⟨-, h1, h2⟩ := scratch_cell hw'.2.1 ho2 (by rw [ht2]; rfl) (k := k)
        (by have := ev_size hw'.2.1 ho2 ht2; have := sm_le hkk; omega)
      exact tab_not_evck hw' hk ha ho2 (Or.inl ht2) h1 h2
    | tab =>
      obtain ⟨hw2, ha2, -⟩ := (gfp_tab hk2).1 hf
      exact tabReg_disj hk hk2 hw' hw2 (Ne.symm hne) ha ha2
    | none => exact gfp_none hk2 hf

/-! ## Layout bookkeeping -/

theorem gamOK_snoc {Γ : Gam} (hG : GamOK Γ) {x : Obj} (hal : x.lo % 8 = 0) (hs8 : x.size % 8 = 0)
    (hpos : 0 < x.size) (hmin : (guestC.ty x.ty).minSz ≤ x.size)
    (hsc : (guestC.ty x.ty).region = .scratch → x.hi ≤ scratchEnd)
    (hd : ∀ y ∈ Γ, y ≠ x → y.hi ≤ x.lo ∨ x.hi ≤ y.lo) : GamOK (Γ ++ [x]) := by
  refine ⟨fun y hy => ?_, fun y hy z hz hne => ?_⟩
  · rcases List.mem_append.mp hy with hy | hy
    · exact hG.1 y hy
    · simp only [List.mem_singleton] at hy; subst hy; exact ⟨hal, hs8, hpos, hmin, hsc⟩
  · rcases List.mem_append.mp hy with hy' | hy' <;> rcases List.mem_append.mp hz with hz' | hz'
    · exact hG.2 y hy' z hz' hne
    · rw [List.mem_singleton] at hz'; rw [hz'] at hne ⊢; exact hd y hy' hne
    · rw [List.mem_singleton] at hy'; rw [hy'] at hne ⊢
      rcases hd z hz' (Ne.symm hne) with h | h
      · exact Or.inr h
      · exact Or.inl h
    · rw [List.mem_singleton] at hy' hz'; rw [hy', hz'] at hne; exact absurd rfl hne

/-- Bytes of the heap's free part at entry lie in no object of a `Γ'` that stays inside the old
objects. -/
theorem not_inObj_free {C : Cfg} {Γ Γ' : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ)
    (hnf : NewFresh Γ Γ' p p) {a : BitVec 64} (h1 : p.hp ≤ a.toNat) (h2 : a.toNat < heapEnd) :
    ¬ InObj Γ' a.toNat := by
  rintro ⟨o, ho, ha1, ha2⟩
  rcases hnf o ho a ha1 ha2 with ⟨o0, ho0, -, -, hb1, hb2⟩ | hf
  · obtain ⟨-, -, c3, c4, c5⟩ := Struct.obj_bounds hord hL ho0
    obtain ⟨-, -, d3, d4, -⟩ := hord
    have key : ∀ rg : Region, (C.ty o0.ty).region = rg → False := by
      intro rg hr
      cases rg with
      | heap => have := c3 hr; omega
      | fmem => have := (c4 hr).1; omega
      | scratch => have := c5 hr; omega
    exact key _ rfl
  · unfold Fresh at hf; omega

/-- Bytes of a `Γ'` inside the old objects are allocated. -/
theorem alloc_of_inObj {C : Cfg} {Γ Γ' : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ)
    (hnf : NewFresh Γ Γ' p p) {a : BitVec 64} (h : InObj Γ' a.toNat) : p.Allocated a.toNat := by
  obtain ⟨o, ho, ha1, ha2⟩ := h
  rcases hnf o ho a ha1 ha2 with ⟨o0, ho0, -, -, hb1, hb2⟩ | hf
  · have h5 := (hL.1 o0 ho0).2.2.2.2
    obtain ⟨d1, d2, d3, d4, d5, -⟩ := hord
    unfold Ptrs.Allocated
    have key : ∀ rg : Region, (C.ty o0.ty).region = rg → (heapBase ≤ a.toNat ∧ a.toNat < p.hp) ∨
        (heapEnd ≤ a.toNat ∧ a.toNat < p.fp) ∨ (p.sp ≤ a.toNat ∧ a.toNat < scratchEnd) := by
      intro rg hr
      rw [hr] at h5
      unfold Obj.lo Obj.hi at *
      cases rg <;> simp only [Region.Live] at h5 <;> omega
    exact key _ rfl
  · unfold Fresh at hf; omega

theorem flatten_word (w : BitVec 64) : flattenHOL (ValueHOL.val (HolWordLab.word w)) = [.word w] := by
  simp [flattenHOL]

theorem retOK_ptr {Γ : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)} {t : Nat} {w : BitVec 64}
    (h : Fits Γ (.ptr t) w) : RetOK Γ p p' vs [.fits (.ptr t)] (.val (.word w)) := by
  intro i r w' h1 h2
  rw [flatten_word] at h2
  cases i with
  | zero =>
      simp only [List.getElem?_cons_zero, Option.some.injEq] at h1 h2
      subst h1; cases h2; exact h
  | succ i => simp at h1

theorem args_eq2 {C : Cfg} {Γ : Gam} {p : Ptrs} {a b : Nat} {vs : List (ValueHOL 64)}
    (h : ArgsOK C Γ p [.eq a, .eq b] vs) :
    vs = [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 b))] := by
  obtain ⟨hl, hv⟩ := h
  match vs, hl with
  | [x, y], _ =>
    have hx := hv 0 _ x rfl rfl
    have hy := hv 1 _ y rfl rfl
    simp only [ArgOK] at hx hy
    unfold wordOf at hx hy
    split at hx <;> split at hy <;> simp_all

/-! ## The constructor entry -/

/-- The header object of a new table at `T` (header type `th`). -/
def hdrObjT (th : Nat) (T : BitVec 64) : Obj := ⟨T, th, 88⟩
/-- One array object `[lo, hi)` of type `ta` covering the three arrays of a new table (rev. 6:
the type names the table: `tOwn T` on the heap; on scratch the object ends at the header). -/
def arrObjT (ta : Nat) (lo hi : Nat) : Obj := ⟨BitVec.ofNat 64 lo, ta, hi - lo⟩

/-- Byte `a` lies in the live part of region `rg`. -/
def InLiveB (p : Ptrs) : Region → Nat → Prop
  | .heap, a => heapBase ≤ a ∧ a < p.hp
  | .fmem, a => heapEnd ≤ a ∧ a < p.fp
  | .scratch, a => p.sp ≤ a ∧ a < scratchEnd

theorem live_of_bytes {p : Ptrs} {rg : Region} {b n : Nat} (hn : 0 < n) (h1 : InLiveB p rg b)
    (h2 : InLiveB p rg (b + n - 1)) : rg.Live p b n := by
  cases rg <;> simp only [InLiveB, Region.Live] at * <;> omega

/-- A well-formed table has a region byte outside its header: the first byte of its node
array. -/
theorem tab_nodeByte {s : State σ} {T : BitVec 64} (hwf : Spec.Inv.TableWF s T) :
    Spec.Inv.TableRegion s.memory T (Spec.Inv.hdr s.memory T 40) ∧
      (T.toNat + 88 ≤ (Spec.Inv.hdr s.memory T 40).toNat ∨
        (Spec.Inv.hdr s.memory T 40).toNat + 32 ≤ T.toNat) := by
  have hl := Spec.Inv.lay_of_sep hwf.1
  have d := hl.dTN
  unfold Spec.Inv.Disj at d
  refine ⟨Or.inr (Or.inl ⟨le_refl _, by omega⟩), ?_⟩
  rcases d with d | d
  · exact Or.inl d
  · exact Or.inr (by omega)

theorem arrObjT_lo {ta lo hi : Nat} (h : lo < 2 ^ 64) : (arrObjT ta lo hi).lo = lo := by
  simp only [arrObjT, Obj.lo]; rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt h]

theorem arrObjT_hi {ta lo hi : Nat} (h : lo < 2 ^ 64) (hlh : lo ≤ hi) : (arrObjT ta lo hi).hi = hi := by
  show (arrObjT ta lo hi).lo + (arrObjT ta lo hi).size = hi
  rw [arrObjT_lo h]; show lo + (hi - lo) = hi; omega

/-- **`G` with a new table added.** From `G` over `Γ'`, a well-formed empty table at `T` whose
region lies in its header `[T, T+88)` and one array block `[lo, hi)` (owned by the header:
type `tOwn T`, or `tHTAs` ending at `T`), all in live bytes of region `rg` that are in no `Γ'`
object, `G` holds with the array object and then the header appended. -/
theorem G_addTableG {H : Hooks σ} (hH : HooksLawful guestC H) (hM : HooksMono guestC H)
    (hT : HtabHooks H) {th ta : Nat} {rg : Region} (hth : hkOf th = .tab) (hta : IsArrTy ta)
    (hrh : (guestC.ty th).region = rg) (hra : (guestC.ty ta).region = rg)
    (hmh : (guestC.ty th).minSz ≤ 88) (hma : (guestC.ty ta).minSz ≤ 8)
    (hph : ∀ k, (guestC.ty th).slot k = .prot) (hpa : ∀ k, (guestC.ty ta).slot k = .prot)
    (htgh : guestC.tags.lookup th = none) (htga : guestC.tags.lookup ta = none)
    {Γ' : Gam} {u : State σ} (hG : G guestC H Γ' u) {p' : Ptrs}
    (hp' : ptrsOf u = some p') {T : BitVec 64} (hwf : Spec.Inv.TableWF u T)
    (hcnt : Spec.Inv.CNT u.memory T = 0) (hkl : Spec.Inv.hdr u.memory T 0 = BitVec.ofNat 64 (htKL th))
    {lo hi : Nat} (hlo8 : lo % 8 = 0) (hhi8 : hi % 8 = 0)
    (hlh : lo < hi) (hhi : hi ≤ 2 ^ 64) (hdTA : T.toNat + 88 ≤ lo ∨ hi ≤ T.toNat)
    (hown : ta = tOwn T ∨ (ta = tHTAs ∧ hi = T.toNat))
    (hreg : ∀ a, Spec.Inv.TableRegion u.memory T a →
      Spec.Inv.InR a T 88 ∨ (lo ≤ a.toNat ∧ a.toNat < hi))
    (hfA : ∀ a : BitVec 64, lo ≤ a.toNat → a.toNat < hi →
      InLiveB p' rg a.toNat ∧ ¬ InObj Γ' a.toNat)
    (hfT : ∀ a : BitVec 64, T.toNat ≤ a.toNat → a.toNat < T.toNat + 88 →
      InLiveB p' rg a.toNat ∧ ¬ InObj Γ' a.toNat) :
    G guestC H (Γ' ++ [arrObjT ta lo hi] ++ [hdrObjT th T]) u := by
  have hl := Spec.Inv.lay_of_sep hwf.1
  have ht8 := hl.t8
  have htt := hl.ht
  have hAlo := arrObjT_lo (ta := ta) (hi := hi) (by omega : lo < 2 ^ 64)
  have hAhi := arrObjT_hi (ta := ta) (by omega : lo < 2 ^ 64) (Nat.le_of_lt hlh)
  have hlive : ∀ (x : Obj), (guestC.ty x.ty).region = rg → rg.Live p' x.lo x.size →
      ∀ p, ptrsOf u = some p → (guestC.ty x.ty).region.Live p x.lo x.size := by
    intro x hr h p hp
    rw [hp'] at hp; cases hp
    rw [hr]; exact h
  have hbyte : ∀ n : Nat, lo ≤ n → n < hi → InLiveB p' rg n := fun n h1 h2 => by
    have := (hfA (BitVec.ofNat 64 n) (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h1)
      (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h2)).1
    rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at this
  have hbyteT : ∀ n : Nat, T.toNat ≤ n → n < T.toNat + 88 → InLiveB p' rg n := fun n h1 h2 => by
    have := (hfT (BitVec.ofNat 64 n) (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h1)
      (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h2)).1
    rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at this
  -- the array object
  have G1 := G_addObj hH hM hG (x := arrObjT ta lo hi) (by rw [hAlo]; exact hlo8)
    (by show (hi - lo) % 8 = 0; omega) (by show 0 < hi - lo; omega)
    (by show (guestC.ty ta).minSz ≤ hi - lo; omega)
    (hlive _ hra (by
      rw [hAlo]
      exact live_of_bytes (by show 0 < hi - lo; omega) (hbyte lo (le_refl _) hlh)
        (hbyte _ (by show lo ≤ lo + (hi - lo) - 1; omega) (by show lo + (hi - lo) - 1 < hi; omega))))
    (fun a ⟨h1, h2⟩ => (hfA a (by rw [hAlo] at h1; exact h1) (by rw [hAhi] at h2; exact h2)).2)
    (fun k _ => by show Fits _ ((guestC.ty ta).slot k) _; rw [hpa k]; trivial) htga
    (hT.arr _ _ _ hta)
  -- the header
  set Γ3 := Γ' ++ [arrObjT ta lo hi] with hΓ3
  have hdisjT : ∀ a : BitVec 64, InO (hdrObjT th T) a → ¬ InObj Γ3 a.toNat := by
    intro a ⟨h1, h2⟩ hin
    simp only [hdrObjT, Obj.hi, Obj.lo] at h1 h2
    obtain ⟨o, ho, ho1, ho2⟩ := hin
    rcases List.mem_append.mp ho with ho | ho
    · exact (hfT a h1 h2).2 ⟨o, ho, ho1, ho2⟩
    · simp only [List.mem_singleton] at ho; subst ho
      rw [hAlo] at ho1; rw [hAhi] at ho2; omega
  have hG3 : GamOK Γ3 := by
    obtain ⟨p3, -, -, hL3, -⟩ := G1
    exact gamOK_of_layout hL3
  have hGT : GamOK (Γ3 ++ [hdrObjT th T]) := by
    refine gamOK_snoc hG3 ht8 (by show 88 % 8 = 0; decide) (by show 0 < 88; decide) hmh
      (fun h => by
        have h' : (guestC.ty th).region = .scratch := h
        rw [hrh] at h'; subst h'
        have := hbyteT (T.toNat + 87) (by omega) (by omega)
        simp only [InLiveB] at this
        simp only [hdrObjT, Obj.hi]; omega) ?_
    intro y hy _
    have hpos := (hG3.1 y hy).2.2.1
    by_contra hc
    simp only [not_or, not_le] at hc
    have hm : (BitVec.ofNat 64 (max y.lo (hdrObjT th T).lo)).toNat = max y.lo (hdrObjT th T).lo := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt]
      simp only [hdrObjT, Obj.lo, Obj.hi] at *
      have := T.isLt; have := y.base.isLt; omega
    refine hdisjT (BitVec.ofNat 64 (max y.lo (hdrObjT th T).lo)) ⟨?_, ?_⟩ ⟨y, hy, ?_, ?_⟩ <;>
      rw [hm] <;> simp only [hdrObjT, Obj.lo, Obj.hi] at * <;> omega
  have harr : ArrIn (Γ3 ++ [hdrObjT th T]) u.memory (hdrObjT th T) := by
    intro a ha _
    simp only [hdrObjT] at ha
    rcases hreg a ha with h | ⟨h1, h2⟩
    · unfold Spec.Inv.InR at h
      exact ⟨hdrObjT th T, by simp, Or.inl rfl, by simp only [hdrObjT, Obj.lo]; omega,
        by simp only [hdrObjT, Obj.hi, Obj.lo]; omega⟩
    · refine ⟨arrObjT ta lo hi, by simp [hΓ3], ?_, by rw [hAlo]; exact h1, by rw [hAhi]; exact h2⟩
      rcases hown with h | ⟨h, h'⟩
      · exact Or.inr (Or.inl h)
      · exact Or.inr (Or.inr ⟨h, by rw [hAhi, h']; rfl⟩)
  have hval : ValOK (Γ3 ++ [hdrObjT th T]) u.memory (hdrObjT th T) := by
    rintro w ⟨j, hj, -⟩
    simp only [hdrObjT] at hj
    omega
  exact G_addObj hH hM G1 (x := hdrObjT th T) ht8 (by show 88 % 8 = 0; decide)
    (by show 0 < 88; decide) hmh
    (hlive _ hrh (by
      simp only [hdrObjT, Obj.lo]
      exact live_of_bytes (by decide) (hbyteT _ (le_refl _) (by omega))
        (hbyteT _ (by omega) (by omega))))
    hdisjT (fun k _ => by show Fits _ ((guestC.ty th).slot k) _; rw [hph k]; trivial) htgh
    (hT.make _ _ _ (by simp) hGT hth ⟨hwf, harr, hval, hkl⟩)

/-- The bytes of the two objects of a new table lie in the header and the array block. -/
theorem newObj_bytes {ta th lo hi : Nat} {T : BitVec 64} (hlo : lo < 2 ^ 64) (hlh : lo ≤ hi)
    {o : Obj} (ho : o = arrObjT ta lo hi ∨ o = hdrObjT th T) {a : BitVec 64} (h1 : o.lo ≤ a.toNat)
    (h2 : a.toNat < o.hi) :
    (lo ≤ a.toNat ∧ a.toNat < hi) ∨ (T.toNat ≤ a.toNat ∧ a.toNat < T.toNat + 88) := by
  rcases ho with rfl | rfl
  · rw [arrObjT_lo hlo] at h1; rw [arrObjT_hi hlo hlh] at h2; exact Or.inl ⟨h1, h2⟩
  · simp only [hdrObjT, Obj.lo, Obj.hi] at h1 h2; exact Or.inr ⟨h1, h2⟩

/-- **The `htab_new` entry** for a constant instance, from the skeleton summary. -/
theorem csumm_htab_new {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hT : HtabHooks H) {th KL CP : Nat} (hth : th ∈ hdrTys) (hrh : (guestC.ty th).region = .heap)
    (hthk : htKL th = KL) (hK0 : 0 < KL) (hK : KL ≤ 2 ^ 16) (hCP : CP ≤ 2 ^ 20)
    (hsk : CSumm σ X guestC H (nm "htab_new") ⟨[.eq KL, .eq CP], [], [], false⟩ []) :
    CSumm σ X guestC H (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩ [] := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  obtain ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, -⟩, -⟩ :=
    hsk vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  have hnf := c9 rfl
  by_cases hret : ∃ v, r = .returned v
  · obtain ⟨v, rfl⟩ := hret
    obtain ⟨p0, hp0, ha⟩ := hargs
    have hvs := args_eq2 ha
    obtain ⟨pG, hpG, hord, hL, -⟩ := hG
    have hpeq : pG = p := Option.some.inj (hpG.symm.trans c1)
    subst hpeq
    obtain ⟨H0, F0, S0, hH0, -, -, hpe⟩ := ptrsOf_some hpG
    have b1 := hord.1
    have b2 := hord.2.1
    have b6 := hord.2.2.2.2.2.1
    have hH0' : s.globals.lookup Spec.Inv.hpN = some (.val (.word H0)) := lookup_of_gword hH0
    have hKLn : (BitVec.ofNat 64 KL).toNat = KL := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hCPn : (BitVec.ofNat 64 CP).toNat = CP := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hpp : pG.hp = H0.toNat := by rw [hpe]
    have hNP := Spec.Inv.funSpec_htab_new hF.hX vs body callee rs hl s hs hloc _ hr
      (BitVec.ofNat 64 KL) (BitVec.ofNat 64 CP) H0 hvs hH0'
      (by rw [← hpp]; exact b2) (by rw [← hpp]; exact b6) (by rw [hKLn]; exact hK)
      (by rw [hCPn]; exact hCP) v rfl
    obtain ⟨rfl, hwf, hcnt, hkl, H1, hH1, hle, hHe, h18, hreg, -, -⟩ := hNP
    set u := (evaluateHOLFiniteState s body).2
    have hp'h : p'.hp = H1.toNat := by
      obtain ⟨a, b, c, ha', -, -, rfl⟩ := ptrsOf_some c2
      have : gword u gHeap = some H1 := gword_of_lookup hH1
      rw [this] at ha'; cases ha'; rfl
    have he : Spec.Inv.heapEnd = heapEnd := rfl
    -- the arrays lie above the header
    obtain ⟨hnb, hnd⟩ := tab_nodeByte hwf
    have hnr := hreg _ hnb
    unfold Spec.Inv.InR at hnr
    have h88 : H0.toNat + 88 < H1.toNat := by omega
    have hfree : ∀ a : BitVec 64, H0.toNat ≤ a.toNat → a.toNat < H1.toNat →
        InLiveB p' .heap a.toNat ∧ ¬ InObj Γ' a.toNat := fun a h1 h2 =>
      ⟨⟨by unfold heapBase at *; omega, by omega⟩,
        not_inObj_free hord hL hnf (by rw [hpp]; omega) (by omega)⟩
    have hG'' := G_addTableG hF.hH hM hT (th := th) (ta := tOwn H0) (rg := .heap) (hkOf_of_tab hth)
      (Or.inr (tOwn_ge _)) hrh (own_region (tOwn_ge _)) (by rw [hdr_minSz th hth])
      (by rw [own_minSz (tOwn_ge _)]; omega) (hdr_prot th hth) (own_prot (tOwn_ge _))
      (hdr_untagged th hth) (own_untagged (tOwn_ge _)) c6 c2 hwf hcnt (by rw [hkl, hthk])
      (lo := H0.toNat + 88) (hi := H1.toNat)
      (by omega) h18 h88 (by omega) (Or.inl (le_refl _)) (Or.inl rfl)
      (fun a ha => by
        have := hreg a ha
        unfold Spec.Inv.InR at this ⊢
        by_cases h : a.toNat < H0.toNat + 88
        · exact Or.inl ⟨this.1, h⟩
        · exact Or.inr ⟨by omega, by omega⟩)
      (fun a h1 h2 => hfree a (by omega) h2) (fun a h1 h2 => hfree a h1 (by omega))
    refine ⟨Γ' ++ [arrObjT (tOwn H0) (H0.toNat + 88) H1.toNat] ++ [hdrObjT th H0], pG, p',
      ⟨hpG, c2, c3, ?_, ?_, hG'', c7, c8, (fun h => by cases h), ?_⟩, trivial⟩
    · intro o ho
      obtain ⟨o', ho', h1, h2, h3⟩ := c4 o ho
      exact ⟨o', by simp [ho'], h1, h2, h3⟩
    · intro o ho a h1 h2
      simp only [List.append_assoc, List.mem_append, List.mem_singleton] at ho
      rcases ho with ho | ho
      · exact c5 o ho a h1 h2
      · right; left
        have hb := newObj_bytes (by omega) (by omega) ho h1 h2
        rw [hpp, hp'h]; omega
    · intro v' hv'
      cases hv'
      exact retOK_ptr ⟨hdrObjT th H0, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩
  · exact ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, c7, c8, (fun h => by cases h),
      fun v hv => absurd ⟨v, hv⟩ hret⟩, trivial⟩

end InitECandidate.Solver.MemSafe.HtabEntries
