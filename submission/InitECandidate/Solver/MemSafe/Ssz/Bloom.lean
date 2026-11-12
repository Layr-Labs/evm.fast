import InitECandidate.Solver.MemSafe.Ssz.Hbv
import InitECandidate.Solver.MemSafe.WaveHelpers.HSeq

set_option autoImplicit false

/-!
# `add_to_bloom`

```
fun 1 add_to_bloom(1 bloom, 1 entry, 1 n) {
  var 1 mark = heap_mark(); var 1 h = alloc(32); keccak256(entry, n, h);
  var idx = 0;
  while idx < 6 {
    var bit = (((ld8 (h + idx)) << 8) | (ld8 (h + idx + 1))) & 2047;
    var bit_index = 2047 - bit; var byte_index = bit_index >>> 3;
    var bv = 1 << (7 - (bit_index & 7));
    st8 bloom + byte_index, (ld8 (bloom + byte_index)) | bv; idx = idx + 2; }
  heap_release(mark); return 0; }
```

The checker rejects only the byte store (`byte_index` is data-dependent). The window, the
allocation, the `keccak256` call and the tail are checked (`decCall_chk`, `chk_sound`); the
loop is proved by hand in the checker's invariant: `byte_index ≤ 255` because `bit ≤ 2047`, so
every store hits the 256-byte buffer argument.

* Generic steps: **`decCall_chk`** (the checker's call-binding rule with a hand continuation),
  `hoareG_decF` (a `var` the abstract locals do not track), `localsOK_fresh_set` / `_res`.
* **`csumm_add_to_bloom`**: `CSumm … "add_to_bloom" ⟨[buf 256, any, any], [], [], false⟩ []`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Ssz
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-! ## Generic steps -/

/-- **`var x = f(args); k` by the checker's binding rule, with a hand continuation.** -/
theorem decCall_chk {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps)
    {A : AEnv} {x f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) {rt : List RT} {o : AOut}
    (hk : ∀ Γ' Θ', HoareG σ X (IG a (bindRes A (args.map (aev E.C A chkFuel)) sg sh x) Γ' Θ') k
      (SPost a rt o Γ' Θ'))
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.decCall x sh f args k) (SPost a rt (restO x A o) Γ Θ) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_decCall hf ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR hst hsh
    obtain ⟨Γ', q', hext, hh', ht', hm, hret⟩ :=
      call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (by simp [Abortive])
    obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) _ vs hvs
    have hav := avs_vok (C := a.C) hlen hvok
    rw [← hE] at hav
    have hh2 := heap_congr (s := st) (t := { st with locals := s.locals }) ha.hH
      rfl rfl rfl rfl hh'
    obtain ⟨Θ1, hp1, hig1⟩ := bindRes_sound ha.hH hh2 ht' (locals_ext hext hl)
      (heap_ord hh) hh.2.2.1 hm (hret v rfl) hav hsh x
    intro t htc hstt hgood
    subst hstt
    exact cont_post ha.hH hl ⟨hext, hp1⟩ (hk Γ' Θ1 _ htc hig1 hgood)
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn
    exact call_abn ha hE hsg hh ht hl hs hfs hvs hcs hcE hR habn _ _

theorem localsOK_fresh_set {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {s : State σ}
    (h : LocalsOK A Γ Θ s) {x : MlS} (hx : A.L.lookup x = none) (v : ValueHOL 64) :
    LocalsOK A Γ Θ (setVarHOLFinite x v s) := by
  intro y av hy
  have hyx : x ≠ y := by rintro rfl; rw [hx] at hy; cases hy
  obtain ⟨w, hw, hok⟩ := h y av hy
  exact ⟨w, by rw [lk_set_ne _ _ hyx]; exact hw, hok⟩

theorem localsOK_fresh_res {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {t : State σ}
    (h : LocalsOK A Γ Θ t) {x : MlS} (hx : A.L.lookup x = none) (old : Option (ValueHOL 64)) :
    LocalsOK A Γ Θ { t with locals := t.locals.resVarEq (x, old) } := by
  intro y av hy
  have hyx : x ≠ y := by rintro rfl; rw [hx] at hy; cases hy
  obtain ⟨w, hw, hok⟩ := h y av hy
  have e : (t.locals.resVarEq (x, old)).lookup y = some w := by
    rw [lookup_resVarEq_ne _ _ hyx]; exact hw
  exact ⟨w, e, hok⟩

/-- `var x = e; k` for a local `x` the abstract environment does not track. -/
theorem hoareG_decF {a : Act σ} (hH : HooksLawful a.C a.H) {A : AEnv} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64}
    {J J' : LocalsS → Prop} (hx : A.L.lookup x = none)
    (hJ : ∀ s : State σ, IG a A Γ Θ s → J s.locals → ∀ v, ev s e = some v →
      J' (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (fun t => IG a A Γ Θ t ∧ J' t.locals) k (fun r t => r = none ∧ IG a A Γ Θ t)) :
    HoareG σ X (fun t => IG a A Γ Θ t ∧ J t.locals) (.dec x .one e k)
      (fun r t => r = none ∧ IG a A Γ Θ t) := by
  refine hoareG_dec fun s _ ⟨hig, hJs⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ h => ⟨h.1, ?_⟩)
  · subst ht
    obtain ⟨p, hh, ht, hl⟩ := hig
    exact ⟨⟨p, heap_congr (s := s) hH rfl rfl rfl rfl hh, ht, localsOK_fresh_set hl hx v⟩,
      hJ s ⟨p, hh, ht, hl⟩ hJs v hv⟩
  · obtain ⟨p, hh, ht, hl⟩ := h.2
    exact ⟨p, heap_congr (s := t) hH rfl rfl rfl rfl hh, ht, localsOK_fresh_res hl hx _⟩

/-! ## Code -/

def abPs : List (MlS × ShapeHOL) := [(nm "bloom", .one), (nm "entry", .one), (nm "n", .one)]

def abBit : ExpHOL 64 :=
  .op .and [.op .or [.shift .lsl (.loadByte (.op .add [lv (nm "h"), lv (nm "idx")])) (cw 8),
    .loadByte (.op .add [lv (nm "h"), lv (nm "idx"), cw 1])], cw 2047]

def abStore : ProgHOL 64 :=
  .seq (.storeByte (.op .add [lv (nm "bloom"), lv (nm "byte_index")])
      (.op .or [.loadByte (.op .add [lv (nm "bloom"), lv (nm "byte_index")]), lv (nm "bv")]))
    (.assign .local (nm "idx") (.op .add [lv (nm "idx"), cw 2]))

def abIter : ProgHOL 64 :=
  .dec (nm "bit") .one abBit
    (.dec (nm "bit_index") .one (.op .sub [cw 2047, lv (nm "bit")])
      (.dec (nm "byte_index") .one (.shift .lsr (lv (nm "bit_index")) (cw 3))
        (.dec (nm "bv") .one (.shift .lsl (cw 1) (.op .sub [cw 7, .op .and [lv (nm "bit_index"),
            cw 7]])) abStore)))

def abLoop : ProgHOL 64 := .while (.cmp .less (lv (nm "idx")) (cw 6)) abIter

def abTail : ProgHOL 64 := .seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (cw 0))

def abK2 : ProgHOL 64 :=
  .seq (callD (nm "keccak256") [lv (nm "entry"), lv (nm "n"), lv (nm "h")])
    (.dec (nm "idx") .one (cw 0) (.seq abLoop abTail))

def abBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (.decCall (nm "h") .one (nm "alloc") [cw 32] abK2)

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_add_to_bloom : fnEntry Guest.Software.guestFn_add_to_bloom =
    (nm "add_to_bloom", abPs, abBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_add_to_bloom : guestCode (nm "add_to_bloom") = some (abPs, abBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 831) (by decide)) ⟨_, rfl⟩
    entry_add_to_bloom

/-! ## Environments and checked facts -/

/-- `keccak256` (`ShardsJL.tab26` entry 488) and `alloc` (558). -/
def abTab : CTab :=
  [(nm "keccak256", ⟨[.any, .any, (.buf 32)], [], [], false⟩, []), (nm "alloc", allocSig, [])]

def abSig : Sig := ⟨[.buf 256, .any, .any], [], [], false⟩

def abCE : CEnv := ⟨upg Types.guestC [], abTab, abSig, []⟩

def abA0 : AEnv := initEnv abPs abSig.params 0 ⟨[], []⟩

def abA1 : AEnv :=
  ⟨setL (nm "mark") (.tmp abA0.T.length 0) abA0.L, abA0.T ++ [some ⟨0, .win .heap⟩]⟩

def abA2 : AEnv := bindRes abA1 ([cw 32].map (aev abCE.C abA1 chkFuel)) allocSig .one (nm "h")

/-- The loop environment: `idx` untracked (any word). -/
def abA3 : AEnv := ⟨setL (nm "idx") .top abA2.L, abA2.T⟩

/-- The decided facts. -/
def AbFacts : Prop :=
    (chk abCE abA2 (callD (nm "keccak256") [lv (nm "entry"), lv (nm "n"), lv (nm "h")])).map
      (fun o => (o.nrm, o.brk, o.cnt)) = some (some abA2, none, none) ∧
    (chk abCE abA3 abTail).isSome = true ∧
    abA3.L.lookup (nm "bit") = none ∧ abA3.L.lookup (nm "bit_index") = none ∧
    abA3.L.lookup (nm "byte_index") = none ∧ abA3.L.lookup (nm "bv") = none ∧
    setL (nm "idx") .top abA3.L = abA3.L ∧ abA3.L.lookup (nm "bloom") = some (.tmp 0 0) ∧
    abA3.T[0]? = some (some ⟨256, .arg 0⟩)

instance : Decidable AbFacts := by unfold AbFacts; infer_instance

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ab_facts : AbFacts := by decide +kernel

set_option maxHeartbeats 0 in
theorem ab_fs : findSig abCE abA1 (nm "alloc") ([cw 32].map (aev abCE.C abA1 chkFuel)) =
    some allocSig := by rfl

/-! ## Values in the loop -/

theorem and_val {x y : BitVec 64} {w : BitVec 64} (h : wordOpHOL .and [x, y] = some w) :
    w.toNat ≤ y.toNat := by
  have h1 : x &&& (y &&& ~~~(0 : BitVec 64)) = w := Option.some.inj h
  rw [← h1, BitVec.toNat_and, BitVec.toNat_and]
  exact Nat.le_trans Nat.and_le_right Nat.and_le_left

theorem bit_le {s : State σ} {v : ValueHOL 64} (h : ev s abBit = some v) :
    ∃ b : BitVec 64, v = .val (.word b) ∧ b.toNat ≤ 2047 := by
  obtain ⟨w, rfl⟩ := ev_wordy (e := abBit) rfl h
  obtain ⟨x, y, -, hy, he⟩ := ev_op2_inv h
  rw [ev_cw] at hy
  cases hy
  exact ⟨w, rfl, and_val he⟩

theorem sub_le {b : BitVec 64} (hb : b.toNat ≤ 2047) :
    (BitVec.ofNat 64 2047 - b).toNat ≤ 2047 := by
  rw [BitVec.toNat_sub, ofNat_toNat_lt (by omega)]
  omega

theorem lsr3_lt {c : BitVec 64} (hc : c.toNat ≤ 2047) : (c >>> (3 : Nat)).toNat < 256 := by
  rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
  omega

theorem ev_lsr3 {s : State σ} {c : BitVec 64}
    (hc : s.locals.lookup (nm "bit_index") = some (.val (.word c))) :
    ev s (.shift .lsr (lv (nm "bit_index")) (cw 3)) = some (.val (.word (c >>> (3 : Nat)))) := by
  rw [ev_shift (ev_lw hc) (ev_cw _ 3)]
  have h3 : (BitVec.ofNat 64 3).toNat = 3 := rfl
  rw [h3]
  simp only [Flapjack.wordShiftHOL]
  rw [if_neg (by omega)]
  rfl

/-- `byte_index` is a byte offset into the 256-byte bloom. -/
def ByteIx (m : LocalsS) : Prop :=
  ∃ y : BitVec 64, m.lookup (nm "byte_index") = some (.val (.word y)) ∧ y.toNat < 256

/-- **One iteration keeps the invariant.** -/
theorem hoareG_abIter {a : Act σ} (ha : ActOK a X) (hF : AbFacts) {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} :
    HoareG σ X (fun t => IG a abA3 Γ Θ t ∧ True) abIter (fun r t => r = none ∧ IG a abA3 Γ Θ t) := by
  obtain ⟨-, -, hx1, hx2, hx3, hx4, hset, hbl, hT0⟩ := hF
  unfold abIter
  refine hoareG_decF ha.hH hx1 (J := fun _ => True)
    (J' := fun m => ∃ b : BitVec 64, m.lookup (nm "bit") = some (.val (.word b)) ∧ b.toNat ≤ 2047)
    (fun s _ _ v hv => ?_) ?_
  · obtain ⟨b, rfl, hb⟩ := bit_le hv
    exact ⟨b, lk_set_self _ _ _, hb⟩
  refine hoareG_decF ha.hH hx2
    (J := fun m => ∃ b : BitVec 64, m.lookup (nm "bit") = some (.val (.word b)) ∧ b.toNat ≤ 2047)
    (J' := fun m => ∃ c : BitVec 64, m.lookup (nm "bit_index") = some (.val (.word c)) ∧
      c.toNat ≤ 2047) (fun s _ ⟨b, hb, hb2⟩ v hv => ?_) ?_
  · rw [ev_sub2 (ev_cw _ 2047) (ev_lw hb)] at hv
    cases hv
    exact ⟨_, lk_set_self _ _ _, sub_le hb2⟩
  refine hoareG_decF ha.hH hx3 (J' := ByteIx)
    (J := fun m => ∃ c : BitVec 64, m.lookup (nm "bit_index") = some (.val (.word c)) ∧
      c.toNat ≤ 2047) (fun s _ ⟨c, hc, hc2⟩ v hv => ?_) ?_
  · rw [ev_lsr3 hc] at hv
    cases hv
    exact ⟨_, lk_set_self _ _ _, lsr3_lt hc2⟩
  refine hoareG_decF ha.hH hx4 (J := ByteIx) (J' := ByteIx) (fun s _ ⟨y, hy, hy2⟩ v _ => ?_) ?_
  · exact ⟨y, by rw [lk_set_ne _ _ (by decide)]; exact hy, hy2⟩
  unfold abStore
  refine hoareG_seq (R := fun r t => r = none ∧ IG a abA3 Γ Θ t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_storeByte fun s _ ⟨⟨p, hh, ht, hl⟩, y, hy, hy2⟩ w x mem hw _ hst => ⟨rfl, ?_⟩
    obtain ⟨v, hv, wb, rfl, q0, n0, hq0, hwb⟩ := hl _ _ hbl
    obtain ⟨q', hq', hbuf, hprov⟩ := ht.2 0 _ hT0
    replace hbuf : BufOK a.C Γ p q'.toNat 256 := hbuf
    rw [hq'] at hq0
    simp only [Option.some.injEq, Prod.mk.injEq] at hq0
    obtain ⟨rfl, -⟩ := hq0
    have hwq : wb = q' := by rw [hwb]; simp
    subst hwq
    rw [ev_add2 (ev_lw hv) (ev_lw hy)] at hw
    cases hw
    obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    have hb : wb.toNat + 256 ≤ scratchEnd := by
      rcases Helpers.bufOK_bound hord hL wb.isLt hbuf with h | h
      · omega
      · exact h
    have hsum : (wb + y).toNat = wb.toNat + y.toNat := by
      rw [BitVec.toNat_add]
      have : scratchEnd < 2 ^ 63 := by decide
      exact Nat.mod_eq_of_lt (by omega)
    have hov : Overlap wb.toNat 256 (panByteAlignHOL (wb + y)) :=
      Helpers.overlap_byte (by rw [hsum]; omega) (by rw [hsum]; omega)
    have hm := Helpers.storeByte_mod hst
    refine ⟨p, WaveHelpers.heap_store_buf ha hh hm
      (fun z hz => ?_) (fun z hz => ?_), ht, hl⟩
    · subst hz
      rcases hbuf _ hov with h | ⟨h, -⟩
      · rw [ha.hupg] at h
        exact Or.inl h
      · exact Or.inr h
    · subst hz
      exact Or.inr (Or.inl (hprov _ hov))
  · refine hoareG_assign fun s _ ⟨_, hig⟩ v hv _ => ⟨rfl, ?_⟩
    obtain ⟨w, rfl⟩ := ev_wordy (e := .op .add [lv (nm "idx"), cw 2]) rfl hv
    have := ig_set ha.hH hig (x := nm "idx") (av := .top) (v := .val (.word w)) ⟨w, rfl, trivial⟩
    rw [hset] at this
    exact this

/-- **The loop keeps the invariant.** -/
theorem hoareG_abLoop {a : Act σ} (ha : ActOK a X) (hF : AbFacts) {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} :
    HoareG σ X (IG a abA3 Γ Θ) abLoop (SPost a [] (.normal abA3) Γ Θ) := by
  refine hoareG_while (I := IG a abA3 Γ Θ) (fun t h => ?_) ?_ ?_
  · obtain ⟨p, hh, ht, hl⟩ := h
    exact ⟨p, heap_congr (s := t) ha.hH rfl rfl rfl rfl hh, ht, hl⟩
  · refine hoareG_conseq (hoareG_abIter ha hF) (fun t _ h => ⟨h.1, trivial⟩) ?_
    intro r t _ _ ⟨hr, hig⟩
    subst hr
    exact ⟨fun _ => hig, fun h => absurd h (by simp), fun h => absurd h (by simp),
      fun r' h => absurd h (by simp)⟩
  · intro s _ hig _
    exact ⟨abA3, Γ, Θ, rfl, later_refl Γ Θ, hig⟩

/-- **`add_to_bloom` with a 256-byte bloom.** -/
theorem csumm_add_to_bloom {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hT : CTabSound σ X Types.guestC H abTab) :
    CSumm σ X Types.guestC H (nm "add_to_bloom") abSig [] := by
  have hcode : X.code.lookup (nm "add_to_bloom") = some (abPs, abBody, .one) := by
    rw [hF.hX]; exact code_add_to_bloom
  have hWS := winSpecs_guest (σ := σ) hF.hX
  have hFa := ab_facts
  obtain ⟨hk1, htl, -⟩ := hFa
  obtain ⟨o3, ho3⟩ := Option.isSome_iff_exists.mp htl
  have hK := aout_of_map hk1
  refine csumm_of_pre hF.hH hF.hC hF.hal hF.hAC hF.hNS hcode rfl ?_
  intro vs s0 Γ0 p0 ha Γ Θ
  refine ⟨restO (nm "mark") abA0 (restO (nm "h") abA1 (restO (nm "idx") abA2 o3)), ?_⟩
  refine mark_post ha hWS (f := nm "heap_mark") (rg := .heap) rfl (fun Γ1 Θ1 => ?_) Γ Θ
  refine decCall_chk ha (E := abCE) rfl hT rfl rfl ab_fs (fun Γ2 Θ2 => ?_) Γ1 Θ1
  refine hoareG_seqN (chk_sound ha (E := abCE) rfl hT rfl rfl hWS _ abA2 _ hK Γ2 Θ2) ?_
  intro Γ3 Θ3 _
  refine hoareG_dec fun s _ hig v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  intro t htc hst hg
  subst hst
  have hig1 := ig_set ha.hH hig (x := nm "idx") (av := .top) (v := .val (.word (BitVec.ofNat 64 0)))
    ⟨_, rfl, trivial⟩
  have H := hoareG_seqN (hoareG_abLoop ha ab_facts) (fun Γ4 Θ4 _ =>
    chk_sound ha (E := abCE) rfl hT rfl rfl hWS abTail abA3 o3 ho3 Γ4 Θ4) _ htc hig1 hg
  obtain ⟨_, _, hl⟩ := hig.choose_spec
  exact cont_post ha.hH hl (later_refl Γ3 Θ3) H

end InitECandidate.Solver.MemSafe.Ssz

#print axioms InitECandidate.Solver.MemSafe.Ssz.csumm_add_to_bloom
