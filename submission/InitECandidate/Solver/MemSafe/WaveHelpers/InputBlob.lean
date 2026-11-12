import InitECandidate.Solver.MemSafe.WaveHelpers.HSeq
import InitECandidate.Solver.MemSafe.WaveHelpers.Slices
import InitECandidate.Solver.MemSafe.ShMem

set_option autoImplicit false

/-!
# `input_blob`: the capability summary

```
fun {1,1} input_blob() {
  var len = 0; !ldw len, INPUT_LEN;
  if len >+ 1073741808 { trap_with(8); }
  var p = alloc(len + 8);
  var i = 0; var w = 0;
  while i <+ len { !ldw w, INPUT_DATA + i; st p + i, w; i = i + 8; }
  return <p, len>; }
```

`trap_with` never returns (`funSpec_trap_with`), so `len ≤ 1073741808` after the guard and
`len + 8` does not wrap: `alloc` returns a fresh block `[p, p + len + 8)`; the stores at `p + i`
(`i < len`, `i ≡ 0 mod 8`) hit it.

`csumm_input_blob`: `CSumm` for `⟨[], [], [], g⟩` (any `g`), from the built-in summaries only.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-! ## The body -/

def ibLoop : ProgHOL 64 :=
  .seq (.shMemLoad .opW .local (nm "w") (.op .add [cw 1073741840, lv (nm "i")]))
    (.seq (.store (.op .add [lv (nm "p"), lv (nm "i")]) (lv (nm "w")))
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 8])))

def ibCond : ExpHOL 64 := .cmp .lower (lv (nm "i")) (lv (nm "len"))

def ibAfter : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0) (.dec (nm "w") .one (cw 0)
    (.seq (.while ibCond ibLoop) (.return (.rstruct [lv (nm "p"), lv (nm "len")]))))

def ibBody : ProgHOL 64 :=
  .dec (nm "len") .one (cw 0)
    (.seq (.shMemLoad .opW .local (nm "len") (cw 1073741832))
      (.seq (.ite (.cmp .lower (cw 1073741808) (lv (nm "len")))
          (callD (nm "trap_with") [cw 8]) .skip)
        (.decCall (nm "p") .one (nm "alloc") [.op .add [lv (nm "len"), cw 8]] ibAfter)))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_input_blob : fnEntry Guest.Software.guestFn_input_blob =
    (nm "input_blob", [], ibBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_input_blob : guestCode (nm "input_blob") = some ([], ibBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 29) (by decide)) ⟨_, rfl⟩
    entry_input_blob

/-! ## Statement rules -/

/-- `trap_with(args);` never ends normally and is abortive. -/
theorem hoareG_trapSP {a : Act σ} (hX : X.code.lookup = guestCode) {L L' : LocalsH → Prop}
    {args : List (ExpHOL 64)} :
    HoareG σ X (PreH a L) (callD (nm "trap_with") args) (SPA a L') := by
  refine hoareG_callD (funSpec_trap_with hX) ?_ ?_
  · intro s _ _ vs _ callee v st hR _
    rcases (hR (by simp [Good])).1 with ⟨e, h⟩ | ⟨c, -, h⟩ <;> cases h
  · intro s _ _ vs _ callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => absurd ?_ hna⟩
    rcases (hR (abn_good' habn)).1 with ⟨e, rfl⟩ | ⟨c, -, rfl⟩
    · trivial
    · rfl

/-- `!ldw x, ad` into a local. -/
theorem hoareG_shLdSP {a : Act σ} (hH : HooksLawful a.C a.H) {L L' : LocalsH → Prop} {o : OpSize}
    {x : MlS} {ad : ExpHOL 64}
    (h : ∀ s : State σ, L s.locals → ∀ w : BitVec 64, L' (setVarHOLFinite x (.val (.word w)) s).locals) :
    HoareG σ X (PreH a L) (.shMemLoad o .local x ad) (SPA a L') :=
  hoareG_shMemLoad_local (fun s _ ⟨hL, hH'⟩ w f => ⟨fun _ => ⟨h s hL w,
      hha_congr (s := s) hH rfl rfl rfl rfl hH'⟩, fun r' h => absurd h (by simp)⟩)
    (fun s _ ⟨_, hH'⟩ e => ⟨fun h => absurd h (by simp), fun r' hr' => by
      cases hr'; exact ⟨Or.inr ⟨e, rfl⟩, fun hna => absurd trivial hna⟩⟩)

/-! ## The loop -/

/-- The loop locals. -/
def IBL (Ar Ln : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word Ar)) ∧ m.lookup (nm "len") = some (.val (.word Ln)) ∧
    ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat % 8 = 0 ∧
      I.toNat < Ln.toNat + 8

/-- The block `[Ar, Ar + n)` stays fresh, outside `Γ`, allocated. -/
def IBH (a : Act σ) (Ar : BitVec 64) (n : Nat) (u : State σ) : Prop :=
  ∃ Γ q, Ext a.Γ0 Γ ∧ Heap a Γ q u ∧ ∀ x : BitVec 64, Overlap Ar.toNat n x →
    ¬ InObj Γ x.toNat ∧ ¬ a.p0.Allocated x.toNat

theorem ibh_congr {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {s t : State σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hb : t.be = s.be) (h : IBH a Ar n s) : IBH a Ar n t := by
  obtain ⟨Γ, q, he, hh, hblk⟩ := h
  exact ⟨Γ, q, he, heap_congr hH hm hg hd hb hh, hblk⟩

def IBI (a : Act σ) (Ar Ln : BitVec 64) (t : State σ) : Prop :=
  IBL Ar Ln t.locals ∧ IBH a Ar (Ln.toNat + 8) t

/-- The loop post: normal end keeps `IBI`; abnormal results are final FFI events. -/
def IBQ (a : Act σ) (Ar Ln : BitVec 64) (r : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  (r = none → IBI a Ar Ln t) ∧ ∀ r', r = some r' → Abortive r'

theorem ib_body {a : Act σ} (ha : ActOK a X) {Ar Ln : BitVec 64} (hA8 : Ar.toNat % 8 = 0)
    (hAL : Ar.toNat + Ln.toNat + 8 < 2 ^ 64) (hLn : Ln.toNat ≤ 1073741808) :
    HoareG σ X (fun t => IBI a Ar Ln t ∧ CondTrue t ibCond) ibLoop (IBQ a Ar Ln) := by
  intro s hs ⟨⟨⟨hp, hl, I, hi, hI8, hIL⟩, hH'⟩, hc⟩
  obtain ⟨w0, hw0, hw00⟩ := condTrue_iff.mp hc
  have hIlt := lower_true (cmp_val_true hw0 hw00 (ev_lw hi) (ev_lw hl))
  refine (?_ : HoareG σ X (fun t => t = s) ibLoop (IBQ a Ar Ln)) s hs rfl
  unfold ibLoop
  -- `!ldw w, …`
  refine hoareG_seq (R := fun r t => (r = none → t.locals.lookup (nm "p") = some (.val (.word Ar)) ∧
      t.locals.lookup (nm "len") = some (.val (.word Ln)) ∧
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧
      (∃ W : BitVec 64, t.locals.lookup (nm "w") = some (.val (.word W))) ∧
      IBH a Ar (Ln.toNat + 8) t) ∧ ∀ r', r = some r' → Abortive r') ?_
    (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) ?_
  · refine hoareG_shMemLoad_local (fun u _ hu W f => ⟨fun _ => ?_, fun r' h => absurd h (by simp)⟩)
      (fun u _ _ e => ⟨fun h => absurd h (by simp), fun r' hr' => by cases hr'; trivial⟩)
    subst u
    have hloc : ∀ y, nm "w" ≠ y →
        (setKvarFfiHOLFinite .local (nm "w") (.val (.word W)) s f).locals.lookup y =
          s.locals.lookup y := fun y hy => lk_set_ne s _ hy
    exact ⟨by rw [hloc _ (by decide)]; exact hp, by rw [hloc _ (by decide)]; exact hl,
      by rw [hloc _ (by decide)]; exact hi, ⟨W, lk_set_self s _ _⟩,
      ibh_congr (s := s) ha.hH rfl rfl rfl rfl hH'⟩
  -- `st p + i, w; i = i + 8`
  refine hoareG_seq (R := fun r t => (r = none → t.locals.lookup (nm "p") = some (.val (.word Ar)) ∧
      t.locals.lookup (nm "len") = some (.val (.word Ln)) ∧
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧
      IBH a Ar (Ln.toNat + 8) t) ∧ ∀ r', r = some r' → Abortive r') ?_
    (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) ?_
  · refine hoareG_store fun u hs' h w v mem hw hv hst => ?_
    obtain ⟨hp', hl', hi', ⟨W, hW⟩, Γ, q, he, hh, hblk⟩ := h.1 rfl
    rw [ev_add2 (ev_lw hp') (ev_lw hi')] at hw
    cases hw
    rw [ev_lw hW] at hv
    cases hv
    rw [flattenHOL] at hst
    obtain ⟨hm, -⟩ := Helpers.store1_mod hst
    have e : (Ar + I).toNat = Ar.toNat + I.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
    have hov : Overlap Ar.toNat (Ln.toNat + 8) (Ar + I) := ⟨by rw [e]; omega, by rw [e]; omega,
      by rw [e]; omega⟩
    exact ⟨fun _ => ⟨hp', hl', hi', Γ, q, he,
      heap_store_out ha hh hm (hblk _ hov).1 (hblk _ hov).2, hblk⟩, fun r' h => absurd h (by simp)⟩
  · refine hoareG_assign fun u _ h v hv _ => ?_
    obtain ⟨hp', hl', hi', hH''⟩ := h.1 rfl
    rw [ev_add2 (ev_lw hi') (ev_cw _ 8)] at hv
    cases hv
    have e : (I + BitVec.ofNat 64 8).toNat = I.toNat + 8 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    exact ⟨fun _ => ⟨⟨by rw [lk_set_ne _ _ (by decide)]; exact hp',
      by rw [lk_set_ne _ _ (by decide)]; exact hl', _, lk_set_self _ _ _, by rw [e]; omega,
      by rw [e]; omega⟩, ibh_congr (s := u) ha.hH rfl rfl rfl rfl hH''⟩,
      fun r' h => absurd h (by simp)⟩

/-! ## The function -/

def sigIB (g : Bool) : Sig := ⟨[], [], [], g⟩

theorem csumm_input_blob {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    (hX : X.code.lookup = guestCode) (g : Bool) :
    CSumm σ X C H (nm "input_blob") (sigIB g) [] := by
  have halloc : CSumm σ X C H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hH hAC _ _ (by simp [builtinTab]))
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  have hse : scratchEnd < 2 ^ 63 := by decide
  refine csumm_of_heap hH hC hal hAC hNS fun vs body callee rs hl s0 _ hloc Γ0 p0 ha hh => ?_
  rw [hX] at hl
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen code_input_blob hl
  refine hoareG_conseq (P := PreH (actOf C H (sigIB g) [] vs s0 Γ0 p0) (fun _ => True))
    (Q := HQa (actOf C H (sigIB g) [] vs s0 Γ0 p0)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨trivial, Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [sigIB] at hrt⟩
  set a := actOf C H (sigIB g) [] vs s0 Γ0 p0 with hadef
  unfold ibBody
  refine hoareG_decH ha.hH (L' := fun _ => True) (fun _ _ _ _ _ => trivial) ?_
  refine hoareG_seqSP (L := fun m => ∃ Ln : BitVec 64, m.lookup (nm "len") = some (.val (.word Ln)))
    hqa_of_abn (hoareG_shLdSP ha.hH fun s _ w => ⟨w, lk_set_self _ _ _⟩) ?_
  refine hoareG_seqSP (L := fun m => ∃ Ln : BitVec 64,
      m.lookup (nm "len") = some (.val (.word Ln)) ∧ Ln.toNat ≤ 1073741808) hqa_of_abn
    (hoareG_iteSP (hoareG_pre (hoareG_trapSP hX) fun _ _ h => h.1) ?_) ?_
  · refine hoareG_skip fun s _ ⟨⟨⟨Ln, hln⟩, hH'⟩, hc⟩ => ⟨fun _ => ⟨⟨Ln, hln, ?_⟩, hH'⟩,
      fun r' h => absurd h (by simp)⟩
    have := cmp_val_false hc (ev_cw _ 1073741808) (ev_lw hln)
    simp only [wordCmpHOL, decide_eq_false_iff_not, BitVec.lt_def] at this
    have h1 : (BitVec.ofNat 64 1073741808).toNat = 1073741808 := rfl
    omega
  refine hoareG_exH fun Ln => ?_
  refine hoareG_decCall (summ_funSpec halloc) ?_ ?_
  · intro s _ ⟨⟨hln, hLn⟩, Γ, q, he, hh1⟩ vs hvs callee v st hR _ hsh
    rw [evs_cons (ev_add2 (ev_lw hln) (ev_cw _ 8)) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, hm2, -, hret⟩ := heap_call ha hh1 hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    obtain ⟨Ar, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨x, hx, hfb⟩ := hret _ rfl 0 (.freshArg 0 1 0) Ar rfl (by rw [flattenHOL]; rfl)
    have hxe : x = Ln + BitVec.ofNat 64 8 := by
      simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
      exact hx.symm
    subst hxe
    have hL8 : (Ln + BitVec.ofNat 64 8).toNat = Ln.toNat + 8 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    rw [hL8] at hfb
    have hfb1 : ∀ y : BitVec 64, Overlap Ar.toNat (Ln.toNat + 8) y →
        Fresh q q2 y ∧ ¬ InObj Γ2 y.toNat := fun y hy => hfb.2 y (by simpa using hy)
    have hord1 := heap_ord hh1
    have hord2 := heap_ord hh2
    have hm1 : a.p0.Mono q := hh1.2.2.1
    have hAL : Ar.toNat + (Ln.toNat + 8) < 2 ^ 64 := by
      rcases freshBuf_bound hord1 hord2 hfb with h | h
      · simp at h
      · simpa using h
    have hblk : ∀ y : BitVec 64, Overlap Ar.toNat (Ln.toNat + 8) y →
        ¬ InObj Γ2 y.toNat ∧ ¬ a.p0.Allocated y.toNat := fun y hy =>
      ⟨(hfb1 y hy).2, fresh_not_alloc ha.hord0 hord2 (mono_trans hm1 hm2)
        (fresh_mono hm1 (hfb1 y hy).1)⟩
    refine hoareG_conseq (Q := HQa a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqa_locals ha.hH _ h)
    unfold ibAfter
    refine hoareG_dec fun s3 _ hs3 v3 hv3 _ => ?_
    subst s3
    rw [ev_cw] at hv3
    cases hv3
    refine hoareG_conseq (Q := HQa a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqa_locals ha.hH _ h)
    refine hoareG_dec fun s4 _ hs4 v4 hv4 _ => ?_
    subst s4
    rw [ev_cw] at hv4
    cases hv4
    refine hoareG_conseq (Q := HQa a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqa_locals ha.hH _ h)
    refine hoareG_seq (R := fun r t => (r = none → IBI a Ar Ln t) ∧ ∀ r', r = some r' → Abortive r')
      ?_ (fun r t _ hr _ h r' hr' hna => absurd (h.2 r' hr') hna) ?_
    · refine hoareG_pre (P := IBI a Ar Ln) ?_ fun t _ ht => ?_
      · refine hoareG_while (fun t h => ⟨h.1, ibh_congr (s := t) ha.hH rfl rfl rfl rfl h.2⟩) ?_ ?_
        · refine hoareG_conseq (ib_body ha hfb.1 (by omega) hLn) (fun _ _ h => h) ?_
          intro r t _ _ h
          refine ⟨h.1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h' => ?_, h.2⟩⟩
          · exact absurd (h.2 _ hc) (by simp [Abortive])
          · exact absurd (h.2 _ hb) (by simp [Abortive])
          · rw [hr'] at h'; cases h'
        · intro t _ h _
          exact ⟨fun _ => h, fun r' h => absurd h (by simp)⟩
      · subst ht
        refine ⟨⟨?_, ?_, BitVec.ofNat 64 0, by rw [lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _,
          by simp, by simp⟩, Γ2, q2, ext_trans he he2,
          heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, hblk⟩
        · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
        · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
          exact hln
    · refine hoareG_return fun t _ ⟨h1, _⟩ v _ => ?_
      obtain ⟨-, Γ', q', he', hh', -⟩ := h1 rfl
      exact hqa_of_hha (t := emptyLocalsHOLFinite t)
        ⟨Γ', q', he', heap_congr (s := t) ha.hH rfl rfl rfl rfl hh'⟩ _
  · intro s _ ⟨⟨hln, hLn⟩, Γ, q, he, hh1⟩ vs hvs callee r st hR _ habn r' hr' hna
    cases hr'
    rw [evs_cons (ev_add2 (ev_lw hln) (ev_cw _ 8)) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1 hR (abn_good' habn) hna (argsOK_any hpsa rfl)
      (fun x hx => absurd hx (argCells_any hpsa)) (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2⟩

end InitECandidate.Solver.MemSafe.WaveHelpers
