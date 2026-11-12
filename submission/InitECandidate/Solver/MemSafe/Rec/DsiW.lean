import InitECandidate.Solver.MemSafe.Rec.DsiGen
import InitECandidate.Solver.MemSafe.Rec.DblLoc

set_option autoImplicit false

/-!
# `decode_stateless_input`: the witness lists

The three `decode_bytes_list` calls of `decode_stateless_input` (`SI_STATE`, `SI_CODES`, `SI_HEADERS`) and the
return. The client predicate `EW Φ Ar pl ks es` adds to `EJ` the known words `ks` of the `si` block and,
for each split array in `es`, the located facts `ES` (each array is adopted as a `tSLA` object right after its
call). `ds_retW` builds `SiW`: slots 5/6 and 7/8 are slice arrays (`Hooks.SlaW`), using the `tVAL` object
around each list's buffer (from `Φ`).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA tSI)
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.Spec.Mpt.Dec (ev_rfield_w)
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

/-- The client predicate of the witness part. -/
def EW (Φ : Prop) (Ar pl : BitVec 64) (ks : List (Nat × BitVec 64))
    (es : List (Nat × Nat × BitVec 64 × BitVec 64)) : Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q m g => EJ Φ Ar (some pl) CzT Γ q m g ∧ RK 96 Ar ks m ∧
    ∀ e ∈ es, ES e.1 e.2.1 e.2.2.1 e.2.2.2 Γ q m

theorem ej_ext {Φ : Prop} {Ar : BitVec 64} {Bf : Option (BitVec 64)} {Cz : Mem → BitVec 64 → Prop}
    {Γ Γ' : Gam} {q q' : Ptrs} {m : Mem} {g : LocalsH} (hx : Ext Γ Γ') (h : EJ Φ Ar Bf Cz Γ q m g) :
    EJ Φ Ar Bf Cz Γ' q' m g :=
  ⟨h.1, h.2.1, fun pl hpl => ⟨(h.2.2 pl hpl).1, plO_ext hx (h.2.2 pl hpl).2⟩⟩

theorem es_ext {Pn Nn : Nat} {arr cnt : BitVec 64} {Γ Γ' : Gam} {q q' : Ptrs} {m : Mem}
    (hx : Ext Γ Γ') (h : ES Pn Nn arr cnt Γ q m) : ES Pn Nn arr cnt Γ' q' m :=
  ⟨h.1, h.2.1, slaObj_ext hx h.2.2.1, h.2.2.2⟩

theorem slObj_of_objN {Γ : Gam} {p l : BitVec 64} (h : ObjN Γ p.toNat l.toNat) : Hooks.SlObj Γ p l := h

theorem objN_of_slObj {Γ : Gam} {p l : BitVec 64} (h : Hooks.SlObj Γ p l) : ObjN Γ p.toNat l.toNat := h

/-- A window of a buffer inside a `tVAL` object. -/
theorem objN_win {Γ : Gam} {WP WL wa wb : BitVec 64} (hW : ObjN Γ WP.toNat WL.toNat)
    (hWe : WP.toNat + WL.toNat ≤ heapEnd) (hab : wa.toNat ≤ wb.toNat) (hbL : wb.toNat ≤ WL.toNat) :
    ObjN Γ (WP + wa).toNat (wb - wa).toNat ∧ (WP + wa).toNat = WP.toNat + wa.toNat ∧
      (wb - wa).toNat = wb.toNat - wa.toNat := by
  have hse := heapEnd_lt64
  have e1 : (WP + wa).toNat = WP.toNat + wa.toNat := by
    rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
  have e2 : (wb - wa).toNat = wb.toNat - wa.toNat := by rw [BitVec.toNat_sub]; omega
  refine ⟨objN_sub hW (by rw [e1]; omega) (by rw [e1, e2]; omega), e1, e2⟩

/-- A store into the `si` block that adds a known word. -/
theorem ds_stW {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64}
    (hAr : Ar.toNat + 96 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0) {k j : Nat} (hkj : k = 8 * j)
    (hj : 8 * j + 8 ≤ 96) (hj0 : 0 < j)
    {L : LocalsH → Prop} (hsi : ∀ m, L m → m.lookup (nm "si") = some (.val (.word Ar)))
    {e : ExpHOL 64} {x : BitVec 64}
    (hval : ∀ s : State σ, L s.locals → ev s e = some (.val (.word x)))
    {Φ : Prop} {pl : BitVec 64} {ks : List (Nat × BitVec 64)}
    {es : List (Nat × Nat × BitVec 64 × BitVec 64)} (hks : ∀ kv ∈ ks, kv.1 ≠ j) :
    HoareG σ X (DI a Ar 96 L (EW Φ Ar pl ks es)) (.store (.op .add [lv (nm "si"), cw k]) e)
      (DQ a Ar 96 L (EW Φ Ar pl ((j, x) :: ks) es)) := by
  subst hkj
  have hse := heapEnd_lt64
  refine hoareG_stDI ha (by omega) ?_
    (fun s _ hL v hv => ⟨x, by rw [hval s hL] at hv; exact (Option.some.inj hv).symm⟩) ?_
  · intro s hs hL w hw
    rw [ev_add2 (ev_lw (hsi _ hL)) (ev_cw _ (8 * j))] at hw
    cases hw
    exact ⟨j, hj, rfl⟩
  · intro s Γ q j' x' mem hs hL hj' ha' hv' hrd hmem hB hE
    rw [ev_add2 (ev_lw (hsi _ hL)) (ev_cw _ (8 * j))] at ha'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha'
    have hjj : j' = j := by have := ofNat_cancel (by omega) (by omega) ha'; omega
    subst hjj
    rw [hval s hL] at hv'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
    subst hv'
    obtain ⟨⟨hΦ, ⟨W, hW, -⟩, hBk⟩, hR, hES⟩ := hE
    refine ⟨⟨hΦ, ⟨W, hW, trivial⟩, fun pl' hpl => ?_⟩, ?_,
      fun e he => es_store hAr hA8 hj' hB hmem (hES e he)⟩
    · obtain ⟨e1, e2⟩ := hBk pl' hpl
      refine ⟨?_, e2⟩
      rw [Hooks.rd_congr (hmem Ar (ne_cell (j := j') (by omega) (by omega)))]; exact e1
    · intro kv hkv
      rcases List.mem_cons.mp hkv with rfl | hkv
      · exact ⟨hj', hrd⟩
      · exact rk_store hAr hj' hks hmem hR kv hkv

/-- **One witness list**: `var {1,1} xn = decode_bytes_list(..); st si + ka, xn.0; st si + kb, xn.1; k`.
The array is adopted as a `tSLA` object; its located facts join `es`. -/
theorem ds_dblW {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hdbl : CSumm σ X a.Cb a.H (nm "decode_bytes_list") dblSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 96 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {kv : List (MlS × BitVec 64)} {Φ : Prop} {pl : BitVec 64} {xn : MlS}
    (hx : ∀ q ∈ kv, q.1 ≠ xn) (hsi : (nm "si", Ar) ∈ kv)
    {ea eb ec ed : ExpHOL 64} {Pv Nv : BitVec 64}
    (hea : ∀ s : State σ, LK kv s.locals → ev s ea = some (.val (.word Pv)))
    (heb : ∀ s : State σ, LK kv s.locals → ev s eb = some (.val (.word Nv)))
    (hec : ∀ s : State σ, LK kv s.locals → ∃ w, ev s ec = some (.val (.word w)))
    (hed : ∀ s : State σ, LK kv s.locals → ∃ w, ev s ed = some (.val (.word w)))
    (hΦ : Φ → ObjN a.Γ0 Pv.toNat Nv.toNat ∧ heapBase ≤ Pv.toNat)
    {ka kb ja jb : Nat} (hka : ka = 8 * ja) (hkb : kb = 8 * jb) (hja : 0 < ja)
    (hja' : 8 * ja + 8 ≤ 96) (hjb : 0 < jb) (hjb' : 8 * jb + 8 ≤ 96) (hab : ja ≠ jb)
    {ks : List (Nat × BitVec 64)} {es : List (Nat × Nat × BitVec 64 × BitVec 64)}
    (hksa : ∀ kv ∈ ks, kv.1 ≠ ja) (hksb : ∀ kv ∈ ks, kv.1 ≠ jb)
    {k : ProgHOL 64} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hk : ∀ x y, HoareG σ X (DI a Ar 96 (LK kv)
      (EW Φ Ar pl ((jb, y) :: (ja, x) :: ks) ((Pv.toNat, Nv.toNat, x, y) :: es))) k (NQ a Rv)) :
    HoareG σ X (DI a Ar 96 (LK kv) (EW Φ Ar pl ks es))
      (.decCall xn (.comb [.one, .one]) (nm "decode_bytes_list") [ea, eb, ec, ed]
        (.seq (.store (.op .add [lv (nm "si"), cw ka]) (.rfield 0 (lv xn)))
          (.seq (.store (.op .add [lv (nm "si"), cw kb]) (.rfield 1 (lv xn))) k))) (NQ a Rv) := by
  have hse := heapEnd_lt64
  have hov : ∀ pl', (some pl : Option (BitVec 64)) = some pl' → Overlap Ar.toNat 96 Ar :=
    fun _ _ => ⟨hA8, by omega, by omega⟩
  refine hoareG_decCallDI (E := EW Φ Ar pl ks es) (L := LK kv)
    (L' := fun v m => LK kv m ∧ LS xn (wdA v) (wdB v) m)
    (E' := fun v => EW Φ Ar pl ks ((Pv.toNat, Nv.toNat, wdA v, wdB v) :: es))
    ha hdbl (freshFoot_decode_bytes_list hX) (by simp [dblSig]) (by simp [dblSig]) (by simp [dblSig])
    ?_ ?_ ?_ ?_
  · intro s _ _ vs hvs
    have := evs_length hvs
    simp at this
    simp [dblSig, this]
  · intro s st v hL hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    refine ⟨fun q hq => ?_, lk_set_self _ _ _⟩
    rw [lk_set_ne (s := { st with locals := s.locals }) _ (Ne.symm (hx q hq))]; exact hL q hq
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    obtain ⟨c, hc⟩ := hec s hL
    obtain ⟨d, hd⟩ := hed s hL
    rw [evs_cons (hea s hL) (evs_cons (heb s hL) (evs_cons hc (evs_cons hd evs_nil)))] at hvs
    cases hvs
    obtain ⟨⟨hΦ0, hW0, hBk0⟩, hR, hES0⟩ := hE
    obtain ⟨hobj, hPb⟩ := hΦ hΦ0
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    obtain ⟨p1, hp1, -, hLay, -⟩ := hh.1
    have hqp : p1 = q := Option.some.inj (hp1.symm.trans hh.2.1)
    subst hqp
    have hPq := objN_below (hC ▸ hLay) (objN_ext he hobj)
    have hord := heap_ord hh
    have hord' := hord
    unfold Ptrs.Ordered at hord'
    obtain ⟨p', hp', -, -, -, hQ⟩ := hLc _ rfl p1 hpe hord ⟨Pv, Nv, c, d, rfl, by omega⟩
    have hp'q : p' = q' := Option.some.inj (hp'.symm.trans co.heap.2.1)
    subst hp'q
    obtain ⟨hq1, hq2, hq3, hq4, hq5⟩ := hQ x y rfl
    have hSI := hq5 Pv Nv c d rfl
    obtain ⟨Γ'', q'', he'', hh'', hB'', hx'', hES⟩ := dp_split_post ha hC hH hgr hs
      (sg' := dblSig) rfl he co (Pn := Pv.toNat) (Nn := Nv.toNat) (arr := x) (cnt := y) hPb
      (by omega) hPq ⟨hq1, hq2, hq3, hq4, hSI⟩ hB
    refine ⟨Γ'', q'', he'', hh'', hB'', ej_ext hx'' (ej_call ha hCb co hB hov ⟨hΦ0, hW0, hBk0⟩),
      rk_call co hs.2 hA8 hB hR, ?_⟩
    intro e he'
    rcases List.mem_cons.mp he' with rfl | he'
    · exact hES
    · exact es_ext hx'' (es_call hCb hC co (hES0 e he'))
  · intro v
    generalize wdA v = x
    generalize wdB v = y
    have hsi' : ∀ m, (fun m => LK kv m ∧ LS xn x y m) m → m.lookup (nm "si") = some (.val (.word Ar)) :=
      fun m hm => lk_get hm.1 hsi
    refine hoareG_seqDI (ds_stW ha hs.2 hA8 hka hja' hja hsi' (x := x)
      (fun s hL => ev_rfield_w hL.2 (i := 0) (w := x) rfl) hksa) ?_
    refine hoareG_seqDI (ds_stW ha hs.2 hA8 hkb hjb' hjb hsi' (x := y)
      (fun s hL => ev_rfield_w hL.2 (i := 1) (w := y) rfl) ?_) ?_
    · intro kv' hkv'
      rcases List.mem_cons.mp hkv' with rfl | hkv'
      · exact hab
      · exact hksb kv' hkv'
    exact hoareG_pre (hk x y) (fun t _ h => di_mono (fun m hm => hm.1) (fun _ _ _ _ h => h) h)

/-- **`return si`** with the witness lists: the block becomes a `tSI` object whose slots 5/6 and 7/8 are
slice arrays. -/
theorem ds_retW {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tSI)]) {Ar : BitVec 64}
    (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 96 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {L : LocalsH → Prop} (hL : ∀ m, L m → m.lookup (nm "si") = some (.val (.word Ar)))
    {Φ : Prop} {pl : BitVec 64} {ks : List (Nat × BitVec 64)}
    {es : List (Nat × Nat × BitVec 64 × BitVec 64)}
    {A0 N0 A1 N1 : BitVec 64} {P0 M0 P1 M1 : Nat}
    (h5 : (5, A0) ∈ ks) (h6 : (6, N0) ∈ ks) (h7 : (7, A1) ∈ ks) (h8 : (8, N1) ∈ ks)
    (he0 : (P0, M0, A0, N0) ∈ es) (he1 : (P1, M1, A1, N1) ∈ es)
    (hΦ : Φ → ObjN a.Γ0 P0 M0 ∧ ObjN a.Γ0 P1 M1) :
    HoareG σ X (DI a Ar 96 L (EW Φ Ar pl ks es)) (.return (lv (nm "si")))
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hMono : HooksMono a.C a.H := by rw [hC, hH]; exact Hooks.guestHooksR_mono
  refine hoareG_return fun t hs' ⟨hLt, Γ, q, he, hh, hB, hn, hE⟩ v hv => ?_
  have hv' : v = .val (.word Ar) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hLt)))
  subst hv'
  refine ⟨by simp, fun r' hr' hna => ?_⟩
  cases hr'
  have hreg : (a.C.ty tSI).region = .heap := by rw [hC]; exact Types.recIds_region tSI (by simp)
  have hprot : ∀ k, (a.C.ty tSI).slot k = .prot := by
    rw [hC]; exact Hooks.si_prot
  have hnt : a.C.tags.lookup tSI = none := by rw [hC]; exact Types.recIds_untagged tSI (by simp)
  have hmin : (a.C.ty tSI).minSz ≤ 96 := by rw [hC]; exact Types.recIds_minSz.2.2.2.2.2
  obtain ⟨⟨hΦ0, -, hBk⟩, hR, hES⟩ := hE
  obtain ⟨hx0, hx1⟩ := hΦ hΦ0
  obtain ⟨e1, hP⟩ := hBk pl rfl
  obtain ⟨x, hx, hxb, hxt, hxs, hxe⟩ := hP
  obtain ⟨hExt, hh2⟩ := Rec.heap_adopt ha hMono he hh (Ar := Ar) (n := 96) (ty := tSI) hreg hprot
    hnt (by decide) (by decide) hmin hs hA8 hB hn hgr (fun hLn => by
      rw [hH]
      have hLn' : Layout Types.guestC q (Γ ++ [(⟨Ar, tSI, 96⟩ : Obj)]) := hC ▸ hLn
      have hxe' : Ext Γ (Γ ++ [(⟨Ar, tSI, 96⟩ : Obj)]) := Struct.ext_snoc Γ _
      have hx0' := objN_ext (ext_trans he hxe') hx0
      have hx1' := objN_ext (ext_trans he hxe') hx1
      refine Hooks.wf_of_siW (s := t) (o := (⟨Ar, tSI, 96⟩ : Obj)) rfl
        (List.mem_append_right _ (List.mem_singleton_self _)) (Hooks.gamOK_of_layout hLn')
        ⟨by simp, by unfold Obj.lo; simp only; omega, ?_, ?_, ?_⟩
      · have e0 : Hooks.txF t.memory (⟨Ar, tSI, 96⟩ : Obj) 0 = pl := by
          unfold Hooks.txF Obj.cell; simpa using e1
        rw [e0]
        exact Or.inr ⟨x, List.mem_append_left _ hx, hxb, hxt, by omega, by omega⟩
      · have e5 : Hooks.txF t.memory (⟨Ar, tSI, 96⟩ : Obj) 5 = A0 := (hR _ h5).2
        have e6 : Hooks.txF t.memory (⟨Ar, tSI, 96⟩ : Obj) 6 = N0 := (hR _ h6).2
        rw [e5, e6]
        exact slaW_of_es (q := q) (es_ext hxe' (hES _ he0)) hx0'
      · have e7 : Hooks.txF t.memory (⟨Ar, tSI, 96⟩ : Obj) 7 = A1 := (hR _ h7).2
        have e8 : Hooks.txF t.memory (⟨Ar, tSI, 96⟩ : Obj) 8 = N1 := (hR _ h8).2
        rw [e7, e8]
        exact slaW_of_es (q := q) (es_ext hxe' (hES _ he1)) hx1')
  refine ⟨_, q, hExt, heap_congr (s := t) ha.hH rfl rfl rfl rfl hh2, fun v' hv' => ?_⟩
  cases hv'
  intro i r w hr hw
  rw [hret] at hr
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hr
    subst hr
    simp [flattenHOL] at hw
    subst hw
    exact ⟨⟨Ar, tSI, 96⟩, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩
  · simp at hr

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.ds_dblW
#print axioms InitECandidate.Solver.MemSafe.Rec.ds_retW
