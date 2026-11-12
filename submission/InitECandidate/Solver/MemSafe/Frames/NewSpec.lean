import InitECandidate.Solver.MemSafe.Hooks.ListFr
import InitECandidate.Solver.MemSafe.HtabEntries.LstNewScratchL
import InitECandidate.Solver.MemSafe.Frames.NewTrk
import InitECandidate.Solver.MemSafe.Helpers.Jumpdests
import InitECandidate.Solver.MemSafe.Struct.FmemAlloc
import InitECandidate.Solver.MemSafe.HtabEntries.NewScratchSpec

/-!
# `frame_new`'s summary: the body

The body is walked with the tracking state `FNS` (`NewTrk.lean`), from the end:
`fnew_ret` (the EV object joins `Γ`; `ChildFacts`), `fnew_t5` … `fnew_t1` (the stores and calls
after each allocation), `fnew_hoare` (the whole body).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 1600000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## Small facts -/

theorem nd_cons {k k' : Nat} {x : BitVec 64} {L : List (Nat × BitVec 64)} (h1 : k ≠ k')
    (h2 : k ∉ L.map Prod.fst) : k ∉ ((k', x) :: L).map Prod.fst := by
  simp only [List.map_cons, List.mem_cons, not_or]
  exact ⟨h1, h2⟩

theorem ev_slot_cases (k : Nat) : (guestC.ty tEV).slot k = .scalar ∨
    (guestC.ty tEV).slot k = .prot ∨ k = 16 ∨ k = 21 ∨ k = 22 := by
  by_cases hk : k < 35
  · have h : ∀ j, j < 35 → (guestC.ty tEV).slot j = .scalar ∨ (guestC.ty tEV).slot j = .prot ∨
        j = 16 ∨ j = 21 ∨ j = 22 := by decide
    exact h k hk
  · right; left
    show evTy.fixed.getD k evTy.rest = .prot
    rw [List.getD_eq_getElem?_getD, List.getElem?_eq_none (by simp [evTy]; omega)]
    rfl

theorem fits_triv {Γ : Gam} {k : Nat} {x : BitVec 64}
    (h : evK k = .scalar ∨ evK k = .prot) : Fits Γ (evK k) x := by
  rcases h with h | h <;> rw [h] <;> trivial

theorem fits_triv0 {Γ : Gam} {k : Nat}
    (h : evK k = .scalar ∨ evK k = .prot ∨ evK k = .bnd) : Fits Γ (evK k) 0 := by
  rcases h with h | h | h <;> rw [h]
  · trivial
  · trivial
  · show (0 : BitVec 64).toNat < 2 ^ 32
    decide

theorem fp_of_ptrs {s : State σ} {p : Ptrs} {F : BitVec 64} (hp : ptrsOf s = some p)
    (hF : gword s gFrame = some F) : p.fp = F.toNat := by
  obtain ⟨a, b, c, -, hb, -, rfl⟩ := AllocImpl.ptrsOf_some hp
  rw [hF] at hb
  cases hb
  rfl

theorem not_argCells {ps : List PT} (hps : ∀ pt ∈ ps, pt = .any ∨ ∃ c, pt = .eq c)
    {vs : List (ValueHOL 64)} (a : BitVec 64) : ¬ ArgCells ps vs a := by
  rintro ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c, d, x, hn, -⟩⟩
  · rcases hps _ (List.mem_of_getElem? hn) with h | ⟨c, h⟩ <;> cases h
  · rcases hps _ (List.mem_of_getElem? hn) with h | ⟨c, h⟩ <;> cases h

theorem evm_empty_val {H : Hooks σ} {Γ : Gam} {u : State σ} (hG : G guestC H Γ u)
    {v : ValueHOL 64} (hv : ev u (gv (nm "evm_empty")) = some v) : ∃ x, v = .val (.word x) := by
  obtain ⟨-, -, -, -, -, -, hGl, -⟩ := hG
  obtain ⟨x, hx, -⟩ := hGl _ _ gt_evm_empty
  have : ev u (gv (nm "evm_empty")) = some (.val (.word x)) := by
    show u.globals.lookup _ = _
    exact gword_some hx
  rw [this] at hv
  cases hv
  exact ⟨x, rfl⟩

/-- The message's access-set slots fit their pointer kinds. -/
theorem msg_fits {H : Hooks σ} {Γ0 Γ : Gam} {s0 u : State σ} {p0 : Ptrs} {msg : BitVec 64}
    (hT : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ u)
    (hmo : ∃ o ∈ Γ0, o.base = msg ∧ (o.ty = tMSGh ∨ o.ty = tMSGs)) :
    Fits Γ (.ptr tHTh20) (fld u.memory msg 152) ∧ Fits Γ (.ptr tHTh52) (fld u.memory msg 160) := by
  obtain ⟨o0, ho0, hb0, ht0⟩ := hmo
  obtain ⟨o, ho, hb, ht, hs⟩ := trk_ext hT o0 ho0
  obtain ⟨q, hq, hord, hL, hF, -⟩ := trk_G hT
  have hmin : (guestC.ty o.ty).minSz ≤ o.size := (hL.1 o ho).2.2.2.1
  have h176 : (guestC.ty o.ty).minSz = 176 := by
    rw [ht]; rcases ht0 with h | h <;> rw [h] <;> rfl
  have hk19 : o.HasSlot 19 := by unfold Obj.HasSlot; omega
  have hk20 : o.HasSlot 20 := by unfold Obj.HasSlot; omega
  have hf19 := hF o ho 19 hk19
  have hf20 := hF o ho 20 hk20
  have hs19 : (guestC.ty o.ty).slot 19 = .ptr tHTh20 := by
    rw [ht]; rcases ht0 with h | h <;> rw [h]
    · exact msgh_acc.1
    · exact msgs_acc.1
  have hs20 : (guestC.ty o.ty).slot 20 = .ptr tHTh52 := by
    rw [ht]; rcases ht0 with h | h <;> rw [h]
    · exact msgh_acc.2
    · exact msgs_acc.2
  have hc19 : o.cell 19 = msg + BitVec.ofNat 64 152 := by unfold Obj.cell; rw [hb, hb0]
  have hc20 : o.cell 20 = msg + BitVec.ofNat 64 160 := by unfold Obj.cell; rw [hb, hb0]
  rw [hs19, hc19] at hf19
  rw [hs20, hc20] at hf20
  exact ⟨hf19, hf20⟩

theorem evs1_ldL {u : State σ} {x : String} {B : BitVec 64} {k : Nat} {vs : List (ValueHOL 64)}
    (hl : u.locals.lookup (nm x) = some (.val (.word B))) (h : evs u [ldL x k] = some vs) :
    vs = [.val (.word (fld u.memory B k))] := by
  obtain ⟨v, vs', rfl, hv, hvs'⟩ := evs_cons_inv h
  rw [evs_nil] at hvs'
  cases hvs'
  rw [ev_ldL hl hv]

theorem evs2_ldL {u : State σ} {x : String} {B : BitVec 64} {k k' : Nat} {vs : List (ValueHOL 64)}
    (hl : u.locals.lookup (nm x) = some (.val (.word B))) (h : evs u [ldL x k, ldL x k'] = some vs) :
    vs = [.val (.word (fld u.memory B k)), .val (.word (fld u.memory B k'))] := by
  obtain ⟨v, vs', rfl, hv, hvs'⟩ := evs_cons_inv h
  rw [evs1_ldL hl hvs', ev_ldL hl hv]

theorem nd_sub {L : List (Nat × BitVec 64)} {ks ks' : List Nat} (h : ∀ k ∈ ks', k ∉ L.map Prod.fst)
    (hsub : ∀ k ∈ ks, k ∈ ks') : ∀ k ∈ ks, k ∉ L.map Prod.fst := fun k hk => h k (hsub k hk)

theorem nd_consL {L : List (Nat × BitVec 64)} {ks : List Nat} {k' : Nat} {x : BitVec 64}
    (h : ∀ k ∈ ks, k ∉ L.map Prod.fst) (hk : k' ∉ ks) :
    ∀ k ∈ ks, k ∉ ((k', x) :: L).map Prod.fst :=
  fun k hkk => nd_cons (fun he => hk (he ▸ hkk)) (h k hkk)

theorem argsOK_eq2 {C : Cfg} {Γ : Gam} {p : Ptrs} (a b : Nat) :
    ArgsOK C Γ p [.eq a, .eq b] [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 b))] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  match i with
  | 0 =>
      simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt hv
      rfl
  | 1 =>
      simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt hv
      rfl
  | n + 2 => simp at hpt

theorem nm_fresh {x : MlS} {lw : List (MlS × BitVec 64)} (h : x ∉ lw.map Prod.fst) :
    ∀ xw ∈ lw, x ≠ xw.1 := fun xw hxw he => h (he ▸ List.mem_map_of_mem hxw)

theorem evK168 : evK 168 = .ptr tHTh20 := by unfold evK; rfl
theorem evK176 : evK 176 = .ptr tHTh52 := by unfold evK; rfl

/-- The message's `prot` slots keep their entry values. -/
theorem msg_prot {H : Hooks σ} {Γ0 Γ : Gam} {s0 u : State σ} {p0 : Ptrs} {msg : BitVec 64}
    (hT : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ u) (hG0 : G guestC H Γ0 s0)
    (hp0 : ptrsOf s0 = some p0) (hmo : ∃ o ∈ Γ0, o.base = msg ∧ (o.ty = tMSGh ∨ o.ty = tMSGs)) :
    fld u.memory msg 40 = fld s0.memory msg 40 ∧ fld u.memory msg 120 = fld s0.memory msg 120 := by
  obtain ⟨o, ho, hb, ht⟩ := hmo
  obtain ⟨q, hq, -, hL, -⟩ := id hG0
  have hmin : (guestC.ty o.ty).minSz ≤ o.size := (hL.1 o ho).2.2.2.1
  have h176 : (guestC.ty o.ty).minSz = 176 := by
    rcases ht with h | h <;> rw [h] <;> rfl
  have hp5 : (guestC.ty o.ty).slot 5 = .prot := by
    rcases ht with h | h <;> rw [h]
    · exact msg_gasProt.1
    · exact msg_gasProt.2
  have hp15 : (guestC.ty o.ty).slot 15 = .prot := by
    rcases ht with h | h <;> rw [h]
    · exact msg_codeNProt.1
    · exact msg_codeNProt.2
  have h5 := trk_fld_prot hT hG0 hp0 ho (k := 5) (by unfold Obj.HasSlot; omega) hp5
  have h15 := trk_fld_prot hT hG0 hp0 ho (k := 15) (by unfold Obj.HasSlot; omega) hp15
  rw [hb] at h5 h15
  exact ⟨h5, h15⟩

/-! ## The body post -/

/-- The post of `frame_new`'s body: a return gives the new EV record `e` (its object in `Γ'`) with
the initial fields of `ChildFacts`. -/
def FQB (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (msg : BitVec 64)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ' e, v = .val (.word e) ∧
    Trk guestC H Γ0 s0 p0 (fun _ => False) Γ' t ∧ ChildFacts tEV msg s0 t Γ' e

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {msg : BitVec 64}

theorem fqb_locals (hH : HooksLawful guestC H) (r : Option (PanSemResultExact 64)) (t : State σ)
    (l : Locs) (h : FQB H Γ0 s0 p0 msg r t) : FQB H Γ0 s0 p0 msg r { t with locals := l } := by
  intro v hv
  obtain ⟨Γ', e, hve, hT, hcf⟩ := h v hv
  exact ⟨Γ', e, hve, trk_congr hH hT rfl rfl rfl rfl, hcf⟩

theorem fqb_abn (r : PanSemResultExact 64) (t : State σ) (h : MemSafe.Abn r) :
    FQB H Γ0 s0 p0 msg (some r) t := by
  intro v hv
  simp only [Option.some.injEq] at hv
  subst hv
  rcases h with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h

variable {e : BitVec 64} {L : List (Nat × BitVec 64)} {obs : List (BitVec 64 × Nat × Nat)}
  {F : BitVec 64}

/-- A summarized call (`SumSpecA` relation, returned result) from the tracking state. -/
theorem fnm_sumRel (hH : HooksLawful guestC H) (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {Γ : Gam} {u st : State σ} {callee : Locs} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {v : ValueHOL 64} (h : FNM H Γ0 s0 p0 e L obs F Γ u)
    (hR : SumRelA guestC H sg Pre PW Q vs (callEntryStateHOLFinite u callee) (.returned v) st)
    (hargs : ∀ p, ArgsOK guestC Γ p sg.params vs) (hpre : Pre vs (callEntryStateHOLFinite u callee) Γ)
    (hps : ∀ pt ∈ sg.params, pt = .any ∨ ∃ c, pt = .eq c)
    (hPW : ∀ a, ¬ PW vs (callEntryStateHOLFinite u callee) Γ a) (hgw : sg.gw = [])
    (hfp : st.globals.lookup gFrame = u.globals.lookup gFrame)
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be) :
    ∃ Γ', FNM H Γ0 s0 p0 e L obs F Γ' st ∧
      Q vs (callEntryStateHOLFinite u callee) Γ (.returned v) st Γ' := by
  have hGe : G guestC H Γ (callEntryStateHOLFinite u callee) :=
    (G_locFree hH u callee _).mpr (trk_G h.1)
  obtain ⟨p, hp, -⟩ := id hGe
  obtain ⟨Γ', p1, p2, hc, hq⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hGe ⟨p, hp, hargs p⟩
    hpre
  exact ⟨Γ', fnm_call hH hG0 hp0 h rfl rfl hc hgw (not_argCells hps) hPW hfp hd hbe, hq⟩

/-- `fnm_sumRel` with the callee's `RetOK` (frames8). -/
theorem fnm_sumRelR (hH : HooksLawful guestC H) (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {Γ : Gam} {u st : State σ} {callee : Locs} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {v : ValueHOL 64} (h : FNM H Γ0 s0 p0 e L obs F Γ u)
    (hR : SumRelA guestC H sg Pre PW Q vs (callEntryStateHOLFinite u callee) (.returned v) st)
    (hargs : ∀ p, ArgsOK guestC Γ p sg.params vs) (hpre : Pre vs (callEntryStateHOLFinite u callee) Γ)
    (hps : ∀ pt ∈ sg.params, pt = .any ∨ ∃ c, pt = .eq c)
    (hPW : ∀ a, ¬ PW vs (callEntryStateHOLFinite u callee) Γ a) (hgw : sg.gw = [])
    (hfp : st.globals.lookup gFrame = u.globals.lookup gFrame)
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be) :
    ∃ Γ' p p', FNM H Γ0 s0 p0 e L obs F Γ' st ∧
      ptrsOf (callEntryStateHOLFinite u callee) = some p ∧
      InitECandidate.Solver.MemSafe.RetOK Γ' p p' vs sg.ret v := by
  have hGe : G guestC H Γ (callEntryStateHOLFinite u callee) :=
    (G_locFree hH u callee _).mpr (trk_G h.1)
  obtain ⟨p, hp, -⟩ := id hGe
  obtain ⟨Γ', p1, p2, hc, -⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hGe ⟨p, hp, hargs p⟩
    hpre
  have hp1 : p1 = p := Option.some.inj (hc.1.symm.trans hp)
  subst hp1
  exact ⟨Γ', p1, p2, fnm_call hH hG0 hp0 h rfl rfl hc hgw (not_argCells hps) hPW hfp hd hbe, hp,
    hc.2.2.2.2.2.2.2.2.2 v rfl⟩

/-- A new recorded object (frames8). -/
theorem fns_obs {lw : List (MlS × BitVec 64)} {Γ : Gam} {u : State σ} {b : BitVec 64} {t n : Nat}
    (h : FNS H Γ0 s0 p0 e lw L obs F Γ u)
    (ho : ∃ o ∈ Γ, o.base = b ∧ o.ty = t ∧ n ≤ o.size ∧ (o.ty = tLSTs → LgEmp Γ u.memory o)) :
    FNS H Γ0 s0 p0 e lw L ((b, t, n) :: obs) F Γ u := by
  obtain ⟨⟨hT, hB, hL, hO, hFg⟩, hlw⟩ := h
  refine ⟨⟨hT, hB, hL, fun ob hob => ?_, hFg⟩, hlw⟩
  rcases List.mem_cons.mp hob with rfl | hob
  · exact ho
  · exact hO ob hob

/-- A new recorded object at the `FNM` level (package L). -/
theorem fnm_obs {Γ : Gam} {u : State σ} {b : BitVec 64} {t n : Nat}
    (h : FNM H Γ0 s0 p0 e L obs F Γ u)
    (ho : ∃ o ∈ Γ, o.base = b ∧ o.ty = t ∧ n ≤ o.size ∧ (o.ty = tLSTs → LgEmp Γ u.memory o)) :
    FNM H Γ0 s0 p0 e L ((b, t, n) :: obs) F Γ u := by
  obtain ⟨hT, hB, hL, hO, hFg⟩ := h
  refine ⟨hT, hB, hL, fun ob hob => ?_, hFg⟩
  rcases List.mem_cons.mp hob with rfl | hob
  · exact ho
  · exact hO ob hob

/-- The tracked field list holds the marks with valid values. -/
def MkL (L : List (Nat × BitVec 64)) : Prop :=
  ∃ x208 x224 : BitVec 64, (208, x208) ∈ L ∧ (224, x224) ∈ L ∧ MarkVals x208 x224 ∧
    (128, 0) ∈ L  -- eon: `EV_OUTPUT_N` is zero (a `bnd` slot)

theorem MkL.mono {L L' : List (Nat × BitVec 64)} (h : MkL L) (hm : ∀ a, a ∈ L → a ∈ L') : MkL L' := by
  obtain ⟨x, y, h1, h2, h3, h4⟩ := h
  exact ⟨x, y, hm _ h1, hm _ h2, h3, hm _ h4⟩

/-- **The return**: the EV object `⟨e, tEV, 280⟩` joins `Γ`. -/
theorem fnew_ret (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hNH : Hooks.NewHooksL H)
    (hp0 : ptrsOf s0 = some p0) {stk FP0 x168 x176 : BitVec 64} {lw : List (MlS × BitVec 64)}
    {Γ : Gam} (he : (nm "e", e) ∈ lw)
    (hmk : MkL L)
    (h8 : (8, stk) ∈ L) (h16 : (16, 0) ∈ L) (h232 : (232, BitVec.ofNat 64 32) ∈ L)
    (h24 : (24, FP0) ∈ L) (h32 : (32, 0) ∈ L) (h40 : (40, BitVec.ofNat 64 1024) ∈ L)
    (h64 : (64, fld s0.memory msg 40) ∈ L) (h192 : (192, 0) ∈ L)
    (h104 : (104, BitVec.ofNat 64 1) ∈ L) (h216 : (216, BitVec.ofNat 64 0) ∈ L)
    (h168 : (168, x168) ∈ L) (h176 : (176, x176) ∈ L)
    {LG D : BitVec 64} (h88 : (88, LG) ∈ L) (h112 : (112, msg) ∈ L) (h136 : (136, D) ∈ L)
    (hlgo : (LG, tLSTs, 0) ∈ obs) (hdo : (D, tHTs20, 0) ∈ obs) (hDf : ¬ p0.Allocated D.toNat)
    (hstk : (stk, tSTACK, 1024) ∈ obs) (hmem : (FP0, tMEM, 1024) ∈ obs)
    (hFP0 : FP0.toNat = p0.fp) (hFF : F.toNat = p0.fp + 1024) :
    HoareG σ X (FNS H Γ0 s0 p0 e lw L obs F Γ) (.return (lv (nm "e"))) (FQB H Γ0 s0 p0 msg) := by
  have hH := hF.hH
  refine hoareG_return fun u _ ⟨hN, hlw⟩ v hv => ?_
  rw [ev_lw (hlw _ he)] at hv
  cases hv
  intro v' hv'
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  obtain ⟨hT, ⟨h1, h2, h3, h4⟩, hL, hO, hFg⟩ := hN
  have hT' : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ (emptyLocalsHOLFinite u) :=
    trk_congr hH hT rfl rfl rfl rfl
  obtain ⟨p, hpu, -⟩ := hT
  have hpt : ptrsOf (emptyLocalsHOLFinite u) = some p := hpu
  have hf : ∀ k w, (k, w) ∈ L → fld u.memory e k = w := fun k w h => (hL _ h).2.2.1
  obtain ⟨xstk, hxstk, hbstk, htstk, hsstk, -⟩ := hO _ hstk
  obtain ⟨xmem, hxmem, hbmem, htmem, hsmem, -⟩ := hO _ hmem
  let x : Obj := ⟨e, tEV, 280⟩
  have hsm : EvSM Shards.sty (Γ ++ [x]) u.memory x := by
    have e1 : fSTK u.memory x = stk := hf 8 _ h8
    have e2 : fSP u.memory x = 0 := hf 16 _ h16
    have e3 : fMEM u.memory x = FP0 := hf 24 _ h24
    have e4 : fLEN u.memory x = 0 := hf 32 _ h32
    have e5 : fMCAP u.memory x = BitVec.ofNat 64 1024 := hf 40 _ h40
    have e29 : fCAP u.memory x = BitVec.ofNat 64 32 := hf 232 _ h232
    refine ⟨⟨?_, ?_, ?_, xstk, List.mem_append_left _ hxstk, ?_, htstk, ?_⟩,
      ⟨?_, ?_, ?_, xmem, List.mem_append_left _ hxmem, ?_, htmem, ?_⟩⟩
    · rw [e2, e29]; decide
    · rw [e29]; decide
    · rw [e29]; decide
    · rw [e1, hbstk]
    · rw [e29]
      have : (1024 : Nat) ≤ xstk.size := hsstk
      exact le_trans (by decide) this
    · rw [e4, e5]; decide
    · rw [e4]; decide
    · rw [e5]; decide
    · rw [e3, hbmem]
    · rw [e5]
      have : (1024 : Nat) ≤ xmem.size := hsmem
      exact le_trans (by decide) this
  have hEV := trk_addObjL (x := x) hM hT' hpt h1 (show (280 : Nat) % 8 = 0 by decide)
    (show 0 < 280 by decide)
    (by rw [ev_minSz]) (by rw [ev_region]; exact ⟨h4 p hpu, h2⟩)
    (fun a ha1 ha2 => by
      have hn := (h3 a ha1 ha2).2
      have hsp := h4 p hpu
      unfold Ptrs.Allocated at hn
      unfold Fresh
      right; right
      show p.sp ≤ a.toNat ∧ a.toNat < p0.sp
      have : a.toNat < scratchEnd := by
        have : x.hi = e.toNat + 280 := rfl
        omega
      constructor
      · have : x.lo = e.toNat := rfl
        omega
      · omega)
    (fun a ⟨ha1, ha2⟩ => (h3 a ha1 ha2).1)
    (fun k _ => by
      rcases ev_slot_cases k with hk | hk | rfl | rfl | rfl
      · rw [hk]; trivial
      · rw [hk]; trivial
      · obtain ⟨-, -, -, -, -, h128⟩ := hmk
        have hr : rd (emptyLocalsHOLFinite u).memory (x.cell 16) = 0 := hf 128 _ h128
        rw [hr, Types.ev_bnd]
        show (0 : BitVec 64).toNat < 2 ^ 32
        decide
      · have h0 := (hL _ h168).2.2.2
        have hk : evK (168, x168).1 = (guestC.ty tEV).slot 21 := by simp only [evK]
        rw [hk] at h0
        have hx : Fits (Γ ++ [x]) ((guestC.ty tEV).slot 21) x168 := fits_append (x := x) h0
        have hr : rd (emptyLocalsHOLFinite u).memory (x.cell 21) = x168 := hf 168 _ h168
        rw [hr]
        exact hx
      · have h0 := (hL _ h176).2.2.2
        have hk : evK (176, x176).1 = (guestC.ty tEV).slot 22 := by simp only [evK]
        rw [hk] at h0
        have hx : Fits (Γ ++ [x]) ((guestC.ty tEV).slot 22) x176 := fits_append (x := x) h0
        have hr : rd (emptyLocalsHOLFinite u).memory (x.cell 22) = x176 := hf 176 _ h176
        rw [hr]
        exact hx)
    ev_untagged
    (fun p' hL' => hNH.ev _ _ x p' hL' (List.mem_append_right _ (List.mem_singleton_self _)) rfl hsm)
  refine ⟨Γ ++ [x], e, rfl, hEV, ⟨x, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl,
    fun pp hpp a ha => ?_⟩, hf 64 _ h64, hf 192 _ h192, hf 104 _ h104, hf 16 _ h16, hf 232 _ h232,
    hf 32 _ h32, hf 40 _ h40, fun pp pp' hpp hpp' => ?_, hf 216 _ h216, fun pp hpp => ?_,
    fun pp hpp => ?_⟩
  · rw [hp0] at hpp
    cases hpp
    exact (h3 a ha.1 ha.2).2
  · rw [hp0] at hpp
    cases hpp
    rw [hpt] at hpp'
    cases hpp'
    refine ⟨?_, ?_⟩
    · show (fld u.memory e 24).toNat = _
      rw [hf 24 _ h24, hFP0]
    · rw [fp_of_ptrs hpu hFg, hFF]
  · rw [hp0] at hpp
    cases hpp
    exact ⟨xmem, List.mem_append_left _ hxmem, by show xmem.base.toNat = _; rw [hbmem, hFP0]⟩
  · rw [hp0] at hpp
    cases hpp
    obtain ⟨xl, hxl, hbl, htl, -, hel⟩ := hO _ hlgo
    obtain ⟨xd, hxd, hbd, htd, -, -⟩ := hO _ hdo
    refine ⟨hf 112 _ h112, ⟨xl, List.mem_append_left _ hxl, hbl.trans (hf 88 _ h88).symm, htl,
        lgEmp_ext (hel htl) (ext_append Γ x) rfl⟩,
      ⟨xd, List.mem_append_left _ hxd, hbd.trans (hf 136 _ h136).symm, htd⟩, ?_, ?_⟩
    · show ¬ p0.Allocated (fld u.memory e 136).toNat
      rw [hf 136 _ h136]
      exact hDf
    · obtain ⟨y208, y224, h1, h2, hv, -⟩ := hmk
      show MarkVals (fld u.memory e 208) (fld u.memory e 224)
      rw [hf 208 _ h1, hf 224 _ h2]
      exact hv

/-- From `st e + EV_DELETE, del` to the return. -/
theorem fnew_t5 (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hNH : Hooks.NewHooksL H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [])
    (fpCnt : KeepsFp σ X (nm "htab_count"))
    (hmo : ∃ o ∈ Γ0, o.base = msg ∧ (o.ty = tMSGh ∨ o.ty = tMSGs))
    {stk FP0 D : BitVec 64} {lw : List (MlS × BitVec 64)} {Γ : Gam}
    (he : (nm "e", e) ∈ lw) (hdel : (nm "del", D) ∈ lw) (hmsg : (nm "msg", msg) ∈ lw)
    (hacc : ∀ xw ∈ lw, nm "acc_n" ≠ xw.1)
    (hmk : MkL L)
    (h8 : (8, stk) ∈ L) (h16 : (16, 0) ∈ L) (h232 : (232, BitVec.ofNat 64 32) ∈ L)
    (h24 : (24, FP0) ∈ L) (h32 : (32, 0) ∈ L) (h40 : (40, BitVec.ofNat 64 1024) ∈ L)
    (h64 : (64, fld s0.memory msg 40) ∈ L) (h192 : (192, 0) ∈ L)
    (h104 : (104, BitVec.ofNat 64 1) ∈ L)
    {LG : BitVec 64} (h88 : (88, LG) ∈ L) (h112 : (112, msg) ∈ L)
    (hlgo : (LG, tLSTs, 0) ∈ obs) (hdo : (D, tHTs20, 0) ∈ obs) (hDf : ¬ p0.Allocated D.toNat)
    (hnd : ∀ k ∈ [136, 168, 176, 264, 272, 120, 144, 216], k ∉ L.map Prod.fst)
    (hstk : (stk, tSTACK, 1024) ∈ obs) (hmem : (FP0, tMEM, 1024) ∈ obs)
    (hFP0 : FP0.toNat = p0.fp) (hFF : F.toNat = p0.fp + 1024) :
    HoareG σ X (FNS H Γ0 s0 p0 e lw L obs F Γ) fnewT5 (FQB H Γ0 s0 p0 msg) := by
  have hH := hF.hH
  have hcntR := FunSpec.and (sumSpecA_rel hcnt) (FunSpec.and fpCnt (funSpec_dom (σ := σ) (X := X) _))
  unfold fnewT5
  refine fns_store hH he (k := 136) (by decide) (by decide) (hnd 136 (by simp))
    (R := fun x => x = D) ?_ fun x136 hx136 => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ hdel)] at hv
    cases hv
    exact ⟨D, rfl, fits_triv (by decide), rfl⟩
  subst x136
  refine fns_store hH he (k := 168) (by decide) (by decide)
    (nd_cons (by decide) (hnd 168 (by simp))) (R := fun _ => True) ?_ fun x168 _ => ?_
  · intro u _ ⟨hN, hlw⟩ v hv
    rw [ev_ldL (hlw _ hmsg) hv]
    exact ⟨_, rfl, by rw [evK168]; exact (msg_fits hN.1 hmo).1, trivial⟩
  refine fns_store hH he (k := 176) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (hnd 176 (by simp)))) (R := fun _ => True) ?_
    fun x176 _ => ?_
  · intro u _ ⟨hN, hlw⟩ v hv
    rw [ev_ldL (hlw _ hmsg) hv]
    exact ⟨_, rfl, by rw [evK176]; exact (msg_fits hN.1 hmo).2, trivial⟩
  -- `var acc_n = htab_count(...)`
  refine fns_decCall hH (fqb_locals hH) fqb_abn hcntR hacc (Pk := fun _ _ => True) ?_
    fun acc1 Γ1 _ => ?_
  · intro u _ ⟨hN, hlw⟩ vs hvs callee w st ⟨hR, hfp, hd, hbe⟩
    have hvs1 := evs1_ldL (hlw _ hmsg) hvs
    subst hvs1
    obtain ⟨Γ', hM', -⟩ := fnm_sumRel hH hG0 hp0 hN hR (fun p => argsOK_any (by simp) rfl)
      (fun c hc => by cases hc) (by simp) (fun a ⟨c, hc, _⟩ => by cases hc) rfl
      (hfp (by simp [Good]) (not_abortive_ret _)) hd hbe
    exact ⟨Γ', hM', trivial⟩
  have he1 : (nm "e", e) ∈ (nm "acc_n", acc1) :: lw := List.mem_cons_of_mem _ he
  refine fns_store hH he1 (k := 264) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (hnd 264 (by simp)))))
    (R := fun _ => True) ?_ fun x264 _ => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ (List.mem_cons_self ..))] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), trivial⟩
  -- `acc_n = htab_count(...)`
  let L2 := (264, x264) :: (176, x176) :: (168, x168) :: (136, D) :: L
  refine hoareG_seq (R := fun r t => (r = none ∧ ∃ acc2 Γ2,
      FNS H Γ0 s0 p0 e ((nm "acc_n", acc2) :: lw) L2 obs F Γ2 t) ∨ (r ≠ none ∧ FQB H Γ0 s0 p0 msg r t))
    ?_ (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_callA hcntR ?_ (fun u _ _ vs _ callee r st _ _ habn => Or.inr ⟨by simp, fqb_abn r _ habn⟩)
    intro u _ ⟨hN, hlw⟩ vs hvs callee v st ⟨hR, hfp, hd, hbe⟩ _ hval
    obtain ⟨w, rfl⟩ := word_of_valid (hlw _ (List.mem_cons_self ..)) hval
    have hvs1 := evs1_ldL (hlw _ (List.mem_cons_of_mem _ hmsg)) hvs
    subst hvs1
    obtain ⟨Γ2, hM2, -⟩ := fnm_sumRel hH hG0 hp0 hN hR (fun p => argsOK_any (by simp) rfl)
      (fun c hc => by cases hc) (by simp) (fun a ⟨c, hc, _⟩ => by cases hc) rfl
      (hfp (by simp [Good]) (not_abortive_ret _)) hd hbe
    exact Or.inl ⟨rfl, w, Γ2, fns_bind hH hM2 (fun xw hxw => hlw xw (List.mem_cons_of_mem _ hxw)) hacc w⟩
  refine hoareG_pre (P := fun t => ∃ acc2 Γ2,
      FNS H Γ0 s0 p0 e ((nm "acc_n", acc2) :: lw) L2 obs F Γ2 t) ?_
    (fun t _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
  refine hoareG_ex fun acc2 => hoareG_ex fun Γ2 => ?_
  have he2 : (nm "e", e) ∈ (nm "acc_n", acc2) :: lw := List.mem_cons_of_mem _ he
  refine fns_store hH he2 (k := 272) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide)
      (hnd 272 (by simp)))))) (R := fun _ => True) ?_ fun x272 _ => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ (List.mem_cons_self ..))] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), trivial⟩
  refine fns_store hH he2 (k := 120) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide)
      (nd_cons (by decide) (hnd 120 (by simp))))))) (R := fun _ => True) ?_ fun x120 _ => ?_
  · intro u _ ⟨hN, _⟩ v hv
    obtain ⟨x, rfl⟩ := evm_empty_val (trk_G hN.1) hv
    exact ⟨x, rfl, fits_triv (by decide), trivial⟩
  refine fns_store hH he2 (k := 144) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide)
      (nd_cons (by decide) (nd_cons (by decide) (hnd 144 (by simp))))))))
    (R := fun _ => True) ?_ fun x144 _ => ?_
  · intro u _ ⟨hN, _⟩ v hv
    obtain ⟨x, rfl⟩ := evm_empty_val (trk_G hN.1) hv
    exact ⟨x, rfl, fits_triv (by decide), trivial⟩
  refine fns_store hH he2 (k := 216) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide)
      (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (hnd 216 (by simp)))))))))
    (R := fun x => x = BitVec.ofNat 64 0) ?_ fun x216 hx216 => ?_
  · intro u _ _ v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst hx216
  have m8 : ∀ {a : Nat × BitVec 64}, a ∈ L → a ∈ (216, BitVec.ofNat 64 0) :: (144, x144) ::
      (120, x120) :: (272, x272) :: L2 := fun h => by
    iterate 8 apply List.mem_cons_of_mem
    exact h
  exact fnew_ret hF hM hNH hp0 he2 (hmk.mono fun _ h => m8 h) (m8 h8) (m8 h16) (m8 h232) (m8 h24) (m8 h32) (m8 h40) (m8 h64)
    (m8 h192) (m8 h104) (by simp) (x168 := x168) (x176 := x176) (by simp [L2]) (by simp [L2])
    (m8 h88) (m8 h112) (by simp [L2]) hlgo hdo hDf hstk hmem hFP0 hFF

/-- From `st e + EV_LOGS, logs` to the return. -/
theorem fnew_t4 (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hNH : Hooks.NewHooksL H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [])
    (fpNs : KeepsFp σ X (nm "htab_new_scratch"))
    (hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [])
    (fpCnt : KeepsFp σ X (nm "htab_count"))
    (hmo : ∃ o ∈ Γ0, o.base = msg ∧ (o.ty = tMSGh ∨ o.ty = tMSGs))
    {stk FP0 LG : BitVec 64} {lw : List (MlS × BitVec 64)} {Γ : Gam}
    (he : (nm "e", e) ∈ lw) (hlogs : (nm "logs", LG) ∈ lw) (hmsg : (nm "msg", msg) ∈ lw)
    (hdl : ∀ xw ∈ lw, nm "del" ≠ xw.1) (hacc : ∀ xw ∈ lw, nm "acc_n" ≠ xw.1)
    (hmk : MkL L)
    (h8 : (8, stk) ∈ L) (h16 : (16, 0) ∈ L) (h232 : (232, BitVec.ofNat 64 32) ∈ L)
    (h24 : (24, FP0) ∈ L) (h32 : (32, 0) ∈ L) (h40 : (40, BitVec.ofNat 64 1024) ∈ L)
    (h64 : (64, fld s0.memory msg 40) ∈ L) (h192 : (192, 0) ∈ L)
    (hnd : ∀ k ∈ [88, 104, 112, 136, 168, 176, 264, 272, 120, 144, 216], k ∉ L.map Prod.fst)
    (hlgo : (LG, tLSTs, 0) ∈ obs)
    (hstk : (stk, tSTACK, 1024) ∈ obs) (hmem : (FP0, tMEM, 1024) ∈ obs)
    (hFP0 : FP0.toNat = p0.fp) (hFF : F.toNat = p0.fp + 1024) :
    HoareG σ X (FNS H Γ0 s0 p0 e lw L obs F Γ) fnewT4 (FQB H Γ0 s0 p0 msg) := by
  have hH := hF.hH
  unfold fnewT4
  refine fns_store hH he (k := 88) (by decide) (by decide) (hnd 88 (by simp))
    (R := fun x => x = LG) ?_ fun x88 hx88 => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ hlogs)] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst x88
  refine fns_store hH he (k := 104) (by decide) (by decide) (nd_cons (by decide) (hnd 104 (by simp)))
    (R := fun x => x = BitVec.ofNat 64 1) ?_ fun x104 hx104 => ?_
  · intro u _ _ v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst hx104
  refine fns_store hH he (k := 112) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (hnd 112 (by simp)))) (R := fun x => x = msg) ?_
    fun x112 hx112 => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ hmsg)] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst x112
  refine fns_decCall hH (fqb_locals hH) fqb_abn
    (FunSpec.and (sumSpecA_rel hns) (FunSpec.and (HtabEntries.funSpec_htab_new_scratch hF.hX)
      (FunSpec.and fpNs (funSpec_dom (σ := σ) (X := X) _)))) hdl
    (Pk := fun D Γ1 => (∃ o ∈ Γ1, o.base = D ∧ o.ty = tHTs20 ∧ 0 ≤ o.size) ∧
      ¬ p0.Allocated D.toNat) ?_ fun D Γ1 hPD => ?_
  · intro u _ ⟨hN, hlw⟩ vs hvs callee w st ⟨hR, hNS, hfp, hd, hbe⟩
    rw [show evs u [cw 20, cw 4] = some [.val (.word (BitVec.ofNat 64 20)),
      .val (.word (BitVec.ofNat 64 4))] from evs_cons (ev_cw _ 20) (evs_cons (ev_cw _ 4) evs_nil)]
      at hvs
    cases hvs
    obtain ⟨Γ', pc, pc', hM', hpc, hret⟩ := fnm_sumRelR hH hG0 hp0 hN hR (fun p => argsOK_eq2 20 4)
      (fun c hc => by cases hc) (by simp) (fun a ⟨c, hc, _⟩ => by cases hc) rfl
      (hfp (by simp [Good]) (not_abortive_ret _)) hd hbe
    have hfit : Fits Γ' (.ptr tHTs20) w := hret 0 _ w rfl (by rw [HtabEntries.flatten_word]; rfl)
    obtain ⟨Do, hDo, hDb, hDt⟩ := hfit
    obtain ⟨pu, hpu, hmu, -⟩ := hN.1
    have hpcu : pc = pu := Option.some.inj (hpc.symm.trans ((ptrsOf_congr rfl).trans hpu))
    subst hpcu
    obtain ⟨q, hq, hordq, -⟩ := trk_G hN.1
    obtain rfl : q = pc := Option.some.inj (hq.symm.trans hpu)
    obtain ⟨T, p', hT, -, -, -, -, -, -, -, hreg, -, -⟩ := hNS (BitVec.ofNat 64 20)
      (BitVec.ofNat 64 4) q rfl hpc hordq (by decide) (by decide) (by decide) _ rfl
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hT
    subst hT
    have hna : ¬ q.Allocated w.toNat := (hreg w (Or.inl ⟨le_refl _, by omega⟩)).2.2.1
    exact ⟨Γ', hM', ⟨Do, hDo, hDb, hDt, Nat.zero_le _⟩, fun ha => hna (Frames.allocated_mono hmu ha)⟩
  have m3 : ∀ {a : Nat × BitVec 64}, a ∈ L → a ∈ (112, msg) :: (104, BitVec.ofNat 64 1) ::
      (88, LG) :: L := fun h => by
    iterate 3 apply List.mem_cons_of_mem
    exact h
  refine hoareG_pre (P := FNS H Γ0 s0 p0 e ((nm "del", D) :: lw) _ ((D, tHTs20, 0) :: obs) F Γ1) ?_
    (fun u _ h => fns_obs h (let ⟨o, ho, hb, ht, hs⟩ := hPD.1
      ⟨o, ho, hb, ht, hs, fun h' => absurd (ht.symm.trans h') (by decide)⟩))
  exact fnew_t5 hF hM hNH hG0 hp0 hcnt fpCnt hmo (List.mem_cons_of_mem _ he) (List.mem_cons_self ..)
    (List.mem_cons_of_mem _ hmsg)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "acc_n" ≠ nm "del"
        decide
      · exact hacc xw hxw)
    (hmk.mono fun _ h => m3 h) (m3 h8) (m3 h16) (m3 h232) (m3 h24) (m3 h32) (m3 h40) (m3 h64) (m3 h192) (by simp)
    (by simp) (by simp) (List.mem_cons_of_mem _ hlgo) (List.mem_cons_self ..) hPD.2
    (nd_consL (nd_consL (nd_consL (nd_sub hnd (by decide)) (by decide)) (by decide)) (by decide))
    (List.mem_cons_of_mem _ hstk) (List.mem_cons_of_mem _ hmem) hFP0 hFF

/-- From `st e + EV_JUMPDESTS, jd` to the return. -/
theorem fnew_t3 (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hNH : Hooks.NewHooksL H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [])
    (fpNs : KeepsFp σ X (nm "htab_new_scratch"))
    (hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [])
    (fpCnt : KeepsFp σ X (nm "htab_count")) (fpLst : KeepsFp σ X (nm "lst_new_scratch"))
    (hmo : ∃ o ∈ Γ0, o.base = msg ∧ (o.ty = tMSGh ∨ o.ty = tMSGs))
    {stk FP0 JD : BitVec 64} {lw : List (MlS × BitVec 64)} {Γ : Gam}
    (he : (nm "e", e) ∈ lw) (hjd : (nm "jd", JD) ∈ lw) (hmsg : (nm "msg", msg) ∈ lw)
    (hlg : ∀ xw ∈ lw, nm "logs" ≠ xw.1)
    (hdl : ∀ xw ∈ lw, nm "del" ≠ xw.1) (hacc : ∀ xw ∈ lw, nm "acc_n" ≠ xw.1)
    (hmk : MkL L)
    (h8 : (8, stk) ∈ L) (h16 : (16, 0) ∈ L) (h232 : (232, BitVec.ofNat 64 32) ∈ L)
    (h24 : (24, FP0) ∈ L) (h32 : (32, 0) ∈ L) (h40 : (40, BitVec.ofNat 64 1024) ∈ L)
    (h64 : (64, fld s0.memory msg 40) ∈ L) (h192 : (192, 0) ∈ L)
    (hnd : ∀ k ∈ [80, 88, 104, 112, 136, 168, 176, 264, 272, 120, 144, 216], k ∉ L.map Prod.fst)
    (hstk : (stk, tSTACK, 1024) ∈ obs) (hmem : (FP0, tMEM, 1024) ∈ obs)
    (hFP0 : FP0.toNat = p0.fp) (hFF : F.toNat = p0.fp + 1024) :
    HoareG σ X (FNS H Γ0 s0 p0 e lw L obs F Γ) fnewT3 (FQB H Γ0 s0 p0 msg) := by
  have hH := hF.hH
  unfold fnewT3
  refine fns_store hH he (k := 80) (by decide) (by decide) (hnd 80 (by simp))
    (R := fun _ => True) ?_ fun x80 _ => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ hjd)] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), trivial⟩
  refine fns_decCallO hH (fqb_locals hH) fqb_abn
    (FunSpec.and (sumSpecA_rel (HtabEntries.sumSpec_lst_new_scratchL hF hM hNH.lst))
      (FunSpec.and fpLst (funSpec_dom (σ := σ) (X := X) _))) hlg
    (Pk := fun _ _ => True) (ob := fun w => (w, tLSTs, 0)) ?_ fun LG Γ1 hPL => ?_
  · intro u _ ⟨hN, hlw⟩ vs hvs callee w st ⟨hR, hfp, hd, hbe⟩
    rw [show evs u [cw 8, cw 4] = some [.val (.word (BitVec.ofNat 64 8)),
      .val (.word (BitVec.ofNat 64 4))] from evs_cons (ev_cw _ 8) (evs_cons (ev_cw _ 4) evs_nil)]
      at hvs
    cases hvs
    obtain ⟨Γ', hM', hQ⟩ := fnm_sumRel hH hG0 hp0 hN hR (fun p => argsOK_any (by simp) rfl)
      rfl (by simp) (fun a h => h) rfl (hfp (by simp [Good]) (not_abortive_ret _)) hd hbe
    obtain ⟨l, q, hl, -, hΓ', hq0, hn0, -⟩ := hQ _ rfl
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hl
    subst hl
    refine ⟨Γ', fnm_obs hM' ⟨⟨w, tLSTs, 24⟩, by rw [hΓ']; simp, rfl, rfl, Nat.zero_le _,
      fun _ => ⟨hn0, ⟨q, tLSTAs, w.toNat - q.toNat⟩, by rw [hΓ']; simp, Or.inr rfl, hq0.symm⟩⟩, trivial⟩
  have m1 : ∀ {a : Nat × BitVec 64}, a ∈ L → a ∈ (80, x80) :: L := fun h => List.mem_cons_of_mem _ h
  exact fnew_t4 hF hM hNH hG0 hp0 hns fpNs hcnt fpCnt hmo (List.mem_cons_of_mem _ he)
    (List.mem_cons_self ..) (List.mem_cons_of_mem _ hmsg)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "del" ≠ nm "logs"
        decide
      · exact hdl xw hxw)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "acc_n" ≠ nm "logs"
        decide
      · exact hacc xw hxw)
    (hmk.mono fun _ h => m1 h) (m1 h8) (m1 h16) (m1 h232) (m1 h24) (m1 h32) (m1 h40) (m1 h64) (m1 h192)
    (nd_consL (nd_sub hnd (by decide)) (by decide)) (List.mem_cons_self ..)
    (List.mem_cons_of_mem _ hstk) (List.mem_cons_of_mem _ hmem) hFP0 hFF

/-- From `st e + EV_MEM_MARK, mem_mark` to the return. -/
theorem fnew_t2 (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hNH : Hooks.NewHooksL H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [])
    (fpNs : KeepsFp σ X (nm "htab_new_scratch"))
    (hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [])
    (fpCnt : KeepsFp σ X (nm "htab_count")) (fpLst : KeepsFp σ X (nm "lst_new_scratch"))
    (fpJd : KeepsFp σ X (nm "compute_jumpdests"))
    (hmo : ∃ o ∈ Γ0, o.base = msg ∧ (o.ty = tMSGh ∨ o.ty = tMSGs))
    (hcn : (fld s0.memory msg 120).toNat + 63 < 2 ^ 64)
    {stk FP0 : BitVec 64} {lw : List (MlS × BitVec 64)} {Γ : Gam}
    (he : (nm "e", e) ∈ lw) (hmm : (nm "mem_mark", FP0) ∈ lw) (hmv : (nm "mem", FP0) ∈ lw)
    (hmsg : (nm "msg", msg) ∈ lw) (hjd : ∀ xw ∈ lw, nm "jd" ≠ xw.1)
    (hlg : ∀ xw ∈ lw, nm "logs" ≠ xw.1)
    (hdl : ∀ xw ∈ lw, nm "del" ≠ xw.1) (hacc : ∀ xw ∈ lw, nm "acc_n" ≠ xw.1)
    {x208 : BitVec 64} (h208 : (208, x208) ∈ L) (hmkv : MarkVals x208 FP0)
    (h8 : (8, stk) ∈ L) (h16 : (16, 0) ∈ L) (h232 : (232, BitVec.ofNat 64 32) ∈ L)
    (h32 : (32, 0) ∈ L) (h192 : (192, 0) ∈ L) (h128 : (128, 0) ∈ L)
    (hnd : ∀ k ∈ [224, 24, 40, 48, 56, 64, 72, 80, 88, 104, 112, 136, 168, 176, 264, 272, 120, 144,
      216], k ∉ L.map Prod.fst)
    (hstk : (stk, tSTACK, 1024) ∈ obs) (hmem : (FP0, tMEM, 1024) ∈ obs)
    (hFP0 : FP0.toNat = p0.fp) (hFF : F.toNat = p0.fp + 1024) :
    HoareG σ X (FNS H Γ0 s0 p0 e lw L obs F Γ) fnewT2 (FQB H Γ0 s0 p0 msg) := by
  have hH := hF.hH
  unfold fnewT2
  refine fns_store hH he (k := 224) (by decide) (by decide) (hnd 224 (by simp))
    (R := fun x => FP0 = x) ?_ fun x224 hx224 => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ hmm)] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst hx224
  refine fns_store hH he (k := 24) (by decide) (by decide) (nd_cons (by decide) (hnd 24 (by simp)))
    (R := fun x => FP0 = x) ?_ fun x24 hx24 => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ hmv)] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst hx24
  refine fns_store hH he (k := 40) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (hnd 40 (by simp))))
    (R := fun x => x = BitVec.ofNat 64 1024) ?_ fun x40 hx40 => ?_
  · intro u _ _ v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst hx40
  refine fns_store hH he (k := 48) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (hnd 48 (by simp)))))
    (R := fun _ => True) ?_ fun x48 _ => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_ldL (hlw _ hmsg) hv]
    exact ⟨_, rfl, fits_triv (by decide), trivial⟩
  refine fns_store hH he (k := 56) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide)
      (hnd 56 (by simp)))))) (R := fun _ => True) ?_ fun x56 _ => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_ldL (hlw _ hmsg) hv]
    exact ⟨_, rfl, fits_triv (by decide), trivial⟩
  refine fns_store hH he (k := 64) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide)
      (nd_cons (by decide) (hnd 64 (by simp)))))))
    (R := fun x => x = fld s0.memory msg 40) ?_ fun x64 hx64 => ?_
  · intro u _ ⟨hN, hlw⟩ v hv
    rw [ev_ldL (hlw _ hmsg) hv]
    exact ⟨_, rfl, fits_triv (by decide), (msg_prot hN.1 hG0 hp0 hmo).1⟩
  subst hx64
  refine fns_store hH he (k := 72) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide) (nd_cons (by decide)
      (nd_cons (by decide) (nd_cons (by decide) (hnd 72 (by simp))))))))
    (R := fun _ => True) ?_ fun x72 _ => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_ldL (hlw _ hmsg) hv]
    exact ⟨_, rfl, fits_triv (by decide), trivial⟩
  -- `var jd = compute_jumpdests(code, code_n)`
  refine fns_decCall hH (fqb_locals hH) fqb_abn
    (FunSpec.and (sumSpecA_rel (sumSpecA_of_sumSpec (sumSpec_compute_jumpdests hH Annot.drv_allocG
      hF.hX hF.hal))) (FunSpec.and fpJd (funSpec_dom (σ := σ) (X := X) _))) hjd
    (Pk := fun _ _ => True) ?_ fun JD Γ1 _ => ?_
  · intro u _ ⟨hN, hlw⟩ vs hvs callee w st ⟨hR, hfp, hd, hbe⟩
    have hvs2 := evs2_ldL (hlw _ hmsg) hvs
    subst hvs2
    obtain ⟨Γ', hM', -⟩ := fnm_sumRel hH hG0 hp0 hN hR (fun p => argsOK_any (by simp [sigJumpdests]) rfl)
      (fun N hN' => by
        simp only [argW, List.getElem?_cons_succ, List.getElem?_cons_zero, wordOf,
          Option.some.injEq] at hN'
        subst hN'
        rw [(msg_prot hN.1 hG0 hp0 hmo).2]
        exact hcn)
      (by simp [sigJumpdests]) (fun a h => h) rfl (hfp (by simp [Good]) (not_abortive_ret _)) hd hbe
    exact ⟨Γ', hM', trivial⟩
  have m7 : ∀ {a : Nat × BitVec 64}, a ∈ L → a ∈ (72, x72) :: (64, fld s0.memory msg 40) ::
      (56, x56) :: (48, x48) :: (40, BitVec.ofNat 64 1024) :: (24, FP0) :: (224, FP0) :: L :=
    fun h => by
      iterate 7 apply List.mem_cons_of_mem
      exact h
  exact fnew_t3 hF hM hNH hG0 hp0 hns fpNs hcnt fpCnt fpLst hmo (List.mem_cons_of_mem _ he)
    (List.mem_cons_self ..) (List.mem_cons_of_mem _ hmsg)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "logs" ≠ nm "jd"
        decide
      · exact hlg xw hxw)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "del" ≠ nm "jd"
        decide
      · exact hdl xw hxw)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "acc_n" ≠ nm "jd"
        decide
      · exact hacc xw hxw)
    ⟨x208, FP0, m7 h208, by simp, hmkv, m7 h128⟩ (m7 h8) (m7 h16) (m7 h232) (by simp) (m7 h32) (by simp) (by simp) (m7 h192)
    (nd_consL (nd_consL (nd_consL (nd_consL (nd_consL (nd_consL (nd_consL (nd_sub hnd (by decide))
      (by decide)) (by decide)) (by decide)) (by decide)) (by decide)) (by decide)) (by decide))
    hstk hmem hFP0 hFF

/-- From `st e + EV_STACK_MARK, stack_mark` to the return (through `frame_mem_alloc`). -/
theorem fnew_t1 (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hNH : Hooks.NewHooksL H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [])
    (fpNs : KeepsFp σ X (nm "htab_new_scratch"))
    (hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [])
    (fpCnt : KeepsFp σ X (nm "htab_count")) (fpLst : KeepsFp σ X (nm "lst_new_scratch"))
    (fpJd : KeepsFp σ X (nm "compute_jumpdests"))
    (hmo : ∃ o ∈ Γ0, o.base = msg ∧ (o.ty = tMSGh ∨ o.ty = tMSGs))
    (hcn : (fld s0.memory msg 120).toNat + 63 < 2 ^ 64)
    {SP0 STK FP0 : BitVec 64} {lw : List (MlS × BitVec 64)} {Γ : Gam}
    (he : (nm "e", e) ∈ lw) (hsm : (nm "stack_mark", SP0) ∈ lw) (hsk : (nm "stk", STK) ∈ lw)
    (hmm : (nm "mem_mark", FP0) ∈ lw) (hmsg : (nm "msg", msg) ∈ lw)
    (hmv : ∀ xw ∈ lw, nm "mem" ≠ xw.1) (hjd : ∀ xw ∈ lw, nm "jd" ≠ xw.1)
    (hlg : ∀ xw ∈ lw, nm "logs" ≠ xw.1)
    (hdl : ∀ xw ∈ lw, nm "del" ≠ xw.1) (hacc : ∀ xw ∈ lw, nm "acc_n" ≠ xw.1)
    (h16 : (16, 0) ∈ L) (h32 : (32, 0) ∈ L) (h192 : (192, 0) ∈ L) (h128 : (128, 0) ∈ L)
    (hnd : ∀ k ∈ [208, 8, 232, 224, 24, 40, 48, 56, 64, 72, 80, 88, 104, 112, 136, 168, 176, 264,
      272, 120, 144, 216], k ∉ L.map Prod.fst)
    (hstk : (STK, tSTACK, 1024) ∈ obs) (hFP0 : FP0.toNat = p0.fp) (hSP : MarkVals SP0 FP0) :
    HoareG σ X (FNS H Γ0 s0 p0 e lw L obs FP0 Γ) fnewT1 (FQB H Γ0 s0 p0 msg) := by
  have hH := hF.hH
  have hA : AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  unfold fnewT1
  refine fns_store hH he (k := 208) (by decide) (by decide) (hnd 208 (by simp))
    (R := fun x => SP0 = x) ?_ fun x208 hx208 => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ hsm)] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst hx208
  refine fns_store hH he (k := 8) (by decide) (by decide) (nd_cons (by decide) (hnd 8 (by simp)))
    (R := fun x => STK = x) ?_ fun x8 hx8 => ?_
  · intro u _ ⟨_, hlw⟩ v hv
    rw [ev_lw (hlw _ hsk)] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst hx8
  refine fns_store hH he (k := 232) (by decide) (by decide)
    (nd_cons (by decide) (nd_cons (by decide) (hnd 232 (by simp))))
    (R := fun x => x = BitVec.ofNat 64 32) ?_ fun x232 hx232 => ?_
  · intro u _ _ v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, rfl, fits_triv (by decide), rfl⟩
  subst hx232
  -- `var mem = frame_mem_alloc(1024)`
  let L1 := (232, BitVec.ofNat 64 32) :: (8, STK) :: (208, SP0) :: L
  refine hoareG_decCall (FunSpec.and (allocSpec_frame_mem_alloc hF.hX)
    (FunSpec.and (Struct.funSpec_frame_mem_alloc hF.hX) (funSpec_dom (σ := σ) (X := X) _))) ?_
    (fun s _ _ vs _ callee r st _ _ habn => fqb_abn r _ habn)
  intro u _ ⟨hN, hlw⟩ vs hvs callee v st ⟨hAl, hFm, hd, hbe⟩ _ _
  rw [show evs u [cw 1024] = some [.val (.word (BitVec.ofNat 64 1024))] from
    evs_cons (ev_cw _ 1024) evs_nil] at hvs
  cases hvs
  obtain ⟨pu, hpu, -⟩ := hN.1
  obtain ⟨q, hq, hordu, -⟩ := trk_G hN.1
  rw [hpu] at hq
  cases hq
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some pu := (ptrsOf_congr rfl).trans hpu
  obtain ⟨hm, hgl, p', hp', hord', hmo', hret⟩ := hAl (by simp [Good]) _ pu rfl hpe hordu
  obtain ⟨qm, rfl, hq8, hlive, hna⟩ := hret _ rfl
  obtain ⟨N, F0, S0, Q, hN1, hF0, hS0, hvF, hQ, -, -, hNle, hQv, hQle⟩ := hFm _ rfl
  simp only [List.cons.injEq, and_true] at hN1
  cases hN1
  have hvF' : qm = F0 := by simpa using hvF
  subst hvF'
  have hFg := hN.2.2.2.2
  have hF0w : gword u gFrame = some qm := by unfold gword; rw [show u.globals.lookup gFrame = _ from hF0]
  have hFF0 : qm = FP0 := Option.some.inj (hF0w.symm.trans hFg)
  subst hFF0
  have h1024 : (BitVec.ofNat 64 1024).toNat = 1024 := rfl
  rw [h1024] at hlive hna
  have hpuF : pu.fp = qm.toNat := fp_of_ptrs hpu hFg
  have hQn : Q.toNat = p0.fp + 1024 := by
    have hfs : pu.fp ≤ pu.sp := hordu.2.2.2.1
    have hse : pu.sp ≤ scratchEnd := hordu.2.2.2.2.1
    have h8 : pu.fp % 8 = 0 := hordu.2.2.2.2.2.2.1
    have hsc : scratchEnd + 1031 < 2 ^ 64 := by decide
    have hlt : qm.toNat + 1031 < 2 ^ 64 := by omega
    have h7 : BitVec.ofNat 64 1024 + BitVec.ofNat 64 7 = BitVec.ofNat 64 1031 := by decide
    rw [h7, BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 1031 < 2 ^ 64),
      Nat.mod_eq_of_lt hlt] at hQv
    rw [hQv]
    omega
  have hMm := fnm_allocObj (ty := tMEM) hH hM hA hN hpu hm (fun g hg => hgl g hg) hp' hord' hmo'
    hd hbe hq8 (by decide) (by decide) (by decide) rfl hlive hna mem_scalar (by decide)
    (fun Γ s o ho => hNH.triv Γ s o (Or.inr (Or.inl ho))) (gword_of hQ)
  have m3 : ∀ {a : Nat × BitVec 64}, a ∈ L → a ∈ L1 := fun h => by
    iterate 3 apply List.mem_cons_of_mem
    exact h
  refine hoareG_conseq (Q := FQB H Γ0 s0 p0 msg) ?_ (fun _ _ h => h)
    (fun r t _ _ h => fqb_locals hH r t _ h)
  refine hoareG_pre (fnew_t2 (Γ := Γ ++ [⟨qm, tMEM, 1024⟩]) (obs := (qm, tMEM, 1024) :: obs)
    (F := Q) (lw := (nm "mem", qm) :: lw) hF hM hNH hG0 hp0 hns fpNs hcnt fpCnt fpLst fpJd hmo hcn
    (List.mem_cons_of_mem _ he) (List.mem_cons_of_mem _ hmm) (List.mem_cons_self ..)
    (List.mem_cons_of_mem _ hmsg)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "jd" ≠ nm "mem"
        decide
      · exact hjd xw hxw)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "logs" ≠ nm "mem"
        decide
      · exact hlg xw hxw)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "del" ≠ nm "mem"
        decide
      · exact hdl xw hxw)
    (fun xw hxw => by
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "acc_n" ≠ nm "mem"
        decide
      · exact hacc xw hxw)
    (L := L1) (x208 := SP0) (by simp [L1]) hSP (by simp [L1]) (m3 h16) (by simp [L1]) (m3 h32) (m3 h192) (m3 h128)
    (nd_consL (nd_consL (nd_consL (nd_sub hnd (by decide)) (by decide)) (by decide)) (by decide))
    (List.mem_cons_of_mem _ hstk) (List.mem_cons_self ..) hFP0 hQn) (fun t _ ht => ?_)
  subst ht
  exact fns_bind hH hMm hlw hmv qm

/-- The zero fields `memzero` leaves that no later store overwrites. -/
def fnewZ : List (Nat × BitVec 64) :=
  [(0, 0), (16, 0), (32, 0), (96, 0), (128, 0), (152, 0), (160, 0), (184, 0), (192, 0), (200, 0),
    (240, 0), (248, 0), (256, 0)]

theorem fnewZ_ok : ∀ kx ∈ fnewZ, kx.1 < 280 ∧ kx.1 % 8 = 0 ∧ kx.2 = 0 ∧
    (evK kx.1 = .scalar ∨ evK kx.1 = .prot ∨ evK kx.1 = .bnd) := by decide

/-- **`frame_new`'s body.** -/
theorem fnew_hoare (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hNH : Hooks.NewHooksL H)
    (hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [])
    (fpNs : KeepsFp σ X (nm "htab_new_scratch"))
    (hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [])
    (fpCnt : KeepsFp σ X (nm "htab_count")) (fpLst : KeepsFp σ X (nm "lst_new_scratch"))
    (fpJd : KeepsFp σ X (nm "compute_jumpdests"))
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hmsg0 : s0.locals.lookup (nm "msg") = some (.val (.word msg)))
    (hmo : ∃ o ∈ Γ0, o.base = msg ∧ (o.ty = tMSGh ∨ o.ty = tMSGs))
    (hcn : (fld s0.memory msg 120).toNat + 63 < 2 ^ 64) :
    HoareG σ X (fun u => u = s0) fnewBody (FQB H Γ0 s0 p0 msg) := by
  have hH := hF.hH
  have hA : AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  obtain ⟨HP, FP0, SP0, -, hgf, hgs, hpeq⟩ := AllocImpl.ptrsOf_some hp0
  have hfp0 : p0.fp = FP0.toNat := by rw [hpeq]
  have hord0 : p0.Ordered := by
    obtain ⟨q, hq, h, -⟩ := hG0
    rw [hp0] at hq
    cases hq
    exact h
  have hL0 : Layout guestC p0 Γ0 := by
    obtain ⟨q, hq, -, h, -⟩ := hG0
    rw [hp0] at hq
    cases hq
    exact h
  have hMV0 : MarkVals SP0 FP0 := by
    obtain ⟨-, -, b3, b4, b5, -, b7, b8⟩ := id hord0
    have hsp : p0.sp = SP0.toNat := by rw [hpeq]
    rw [hfp0] at b3 b4 b7
    rw [hsp] at b4 b5 b8
    exact ⟨b3, b4, b5, b8, b7⟩
  have hT0 : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 s0 := trk_refl hG0 hp0
  unfold fnewBody
  -- `var stack_mark = scratch_mark()`
  refine hoareG_decCall (FunSpec.and (markSpec'_scratch_mark hF.hX)
    (funSpec_dom (σ := σ) (X := X) _)) ?_ (fun s _ _ vs _ callee r st _ _ habn => fqb_abn r _ habn)
  intro s _ hs vs hvs callee v st ⟨hR, hd1, hbe1⟩ _ _
  subst s
  rw [show evs s0 ([] : List (ExpHOL 64)) = some [] from evs_nil] at hvs
  cases hvs
  obtain ⟨hm1, hg1, hret1⟩ := hR (by simp [Good]) rfl
  have hv1 := mark_val_word (hret1 v rfl) (s := callEntryStateHOLFinite s0 callee) hgs
  subst hv1
  refine hoareG_conseq (Q := FQB H Γ0 s0 p0 msg) ?_ (fun _ _ h => h)
    (fun r t _ _ h => fqb_locals hH r t _ h)
  -- `var mem_mark = frame_mem_mark()`
  refine hoareG_decCall (FunSpec.and (markSpec'_frame_mem_mark hF.hX)
    (funSpec_dom (σ := σ) (X := X) _)) ?_ (fun s _ _ vs _ callee r st _ _ habn => fqb_abn r _ habn)
  intro s _ hs vs hvs callee2 v st2 ⟨hR2, hd2, hbe2⟩ _ _
  subst hs
  rw [show evs (setVarHOLFinite (nm "stack_mark") (.val (.word SP0)) { st with locals := s0.locals })
    ([] : List (ExpHOL 64)) = some [] from evs_nil] at hvs
  cases hvs
  obtain ⟨hm2, hg2, hret2⟩ := hR2 (by simp [Good]) rfl
  have hgf1 : gword (callEntryStateHOLFinite (setVarHOLFinite (nm "stack_mark") (.val (.word SP0))
      { st with locals := s0.locals }) callee2) gFrame = some FP0 := by
    rw [← hgf]; exact gword_congr hg1 gFrame
  have hv2 := mark_val_word (hret2 v rfl) hgf1
  subst hv2
  refine hoareG_conseq (Q := FQB H Γ0 s0 p0 msg) ?_ (fun _ _ h => h)
    (fun r t _ _ h => fqb_locals hH r t _ h)
  set u1 := setVarHOLFinite (nm "stack_mark") (.val (.word SP0)) { st with locals := s0.locals }
    with hu1
  set u2 := setVarHOLFinite (nm "mem_mark") (.val (.word FP0)) { st2 with locals := u1.locals }
    with hu2
  have hu2m : u2.memory = s0.memory := hm2.trans hm1
  have hu2g : u2.globals = s0.globals := hg2.trans hg1
  have hu2d : u2.memaddrs = s0.memaddrs := hd2.trans hd1
  have hu2b : u2.be = s0.be := hbe2.trans hbe1
  -- `var e = scratch_alloc(EV_SIZE)`
  refine hoareG_decCall (FunSpec.and (allocSpec_scratch_alloc hF.hX)
    (funSpec_dom (σ := σ) (X := X) _)) ?_ (fun s _ _ vs _ callee r st _ _ habn => fqb_abn r _ habn)
  intro s _ hs vs hvs callee3 v st3 ⟨hAl3, hd3, hbe3⟩ _ _
  subst hs
  rw [show evs u2 [cw 280] = some [.val (.word (BitVec.ofNat 64 280))] from
    evs_cons (ev_cw _ 280) evs_nil] at hvs
  cases hvs
  have hpe2 : ptrsOf (callEntryStateHOLFinite u2 callee3) = some p0 := by
    rw [ptrsOf_congr (show (callEntryStateHOLFinite u2 callee3).globals = s0.globals from hu2g)]
    exact hp0
  obtain ⟨hm3, hgl3, p1, hp1, hord1, hmo1, hret3⟩ := hAl3 (by simp [Good]) _ p0 rfl hpe2 hord0
  obtain ⟨E, rfl, hE8, hElive, hEna⟩ := hret3 _ rfl
  have h280 : (BitVec.ofNat 64 280).toNat = 280 := rfl
  rw [h280] at hElive hEna
  have hT3 : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 st3 :=
    trk_alloc hH hA hT0 (t' := callEntryStateHOLFinite u2 callee3) hu2m hu2g hpe2 hm3 hgl3 hp1 hord1
      hmo1 (hd3.trans hu2d) (hbe3.trans hu2b)
  refine hoareG_conseq (Q := FQB H Γ0 s0 p0 msg) ?_ (fun _ _ h => h)
    (fun r t _ _ h => fqb_locals hH r t _ h)
  set u3 := setVarHOLFinite (nm "e") (.val (.word E)) { st3 with locals := u2.locals } with hu3
  have hT3' : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u3 := trk_congr hH hT3 rfl rfl rfl rfl
  have hgf3 : gword u3 gFrame = some FP0 := by
    have h3 : st3.globals.lookup gFrame = s0.globals.lookup gFrame := by
      rw [hgl3 gFrame (by decide)]
      show u2.globals.lookup gFrame = _
      rw [hu2g]
    rw [← hgf]
    show gword st3 gFrame = gword s0 gFrame
    unfold gword
    rw [h3]
  let lw0 : List (MlS × BitVec 64) :=
    [(nm "e", E), (nm "mem_mark", FP0), (nm "stack_mark", SP0), (nm "msg", msg)]
  have hlw0 : ∀ xw ∈ lw0, u3.locals.lookup xw.1 = some (.val (.word xw.2)) := by
    intro xw hxw
    simp only [lw0, List.mem_cons, List.not_mem_nil, or_false] at hxw
    rcases hxw with rfl | rfl | rfl | rfl
    · exact lk_set_self _ _ _
    · rw [hu3, lk_set_ne _ _ (show nm "e" ≠ nm "mem_mark" by decide)]
      show u2.locals.lookup _ = _
      rw [hu2]; exact lk_set_self _ _ _
    · rw [hu3, lk_set_ne _ _ (show nm "e" ≠ nm "stack_mark" by decide)]
      show u2.locals.lookup _ = _
      rw [hu2, lk_set_ne _ _ (show nm "mem_mark" ≠ nm "stack_mark" by decide)]
      show u1.locals.lookup _ = _
      rw [hu1]; exact lk_set_self _ _ _
    · rw [hu3, lk_set_ne _ _ (show nm "e" ≠ nm "msg" by decide)]
      show u2.locals.lookup _ = _
      rw [hu2, lk_set_ne _ _ (show nm "mem_mark" ≠ nm "msg" by decide)]
      show u1.locals.lookup _ = _
      rw [hu1, lk_set_ne _ _ (show nm "stack_mark" ≠ nm "msg" by decide)]
      exact hmsg0
  -- `memzero(e, EV_SIZE)`
  refine hoareG_seq (R := fun r t => (r = none ∧ FNS H Γ0 s0 p0 E lw0 fnewZ [] FP0 Γ0 t) ∨
      (r ≠ none ∧ FQB H Γ0 s0 p0 msg r t)) ?_
    (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_callD (FunSpec.and (foot_memzero hF.hX hF.hal) (FunSpec.and (funSpec_memzeroZ hF.hX)
      (funSpec_dom (σ := σ) (X := X) _))) ?_
      (fun s _ _ vs _ callee r st _ _ habn => Or.inr ⟨by simp, fqb_abn r _ habn⟩)
    intro s _ hs vs hvs callee4 v st4 ⟨hfz, hz, hd4, hbe4⟩ _
    subst hs
    rw [show evs u3 [lv (nm "e"), cw 280] = some [.val (.word E), .val (.word (BitVec.ofNat 64 280))]
      from evs_cons (ev_lw (lk_set_self _ _ _)) (evs_cons (ev_cw _ 280) evs_nil)] at hvs
    cases hvs
    obtain ⟨hg4, hmod4⟩ := hfz (by simp [Good]) ⟨E, _, rfl, rfl, Or.inr (by rw [h280]; exact hElive.2)⟩
    have hz4 := hz v rfl E (BitVec.ofNat 64 280) rfl hE8 (by decide) (by decide)
    have hB : ∀ a, BufR 0 1 [.val (.word E), .val (.word (BitVec.ofNat 64 280))] a →
        E.toNat ≤ a.toNat ∧ a.toNat < E.toNat + 280 := by
      rintro a ⟨D, N, hD, hN, ha8, h1, h2⟩
      simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ,
        Option.some.injEq] at hD hN
      subst hD hN
      rw [h280] at h2
      omega
    have hT4 : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 { st4 with locals := u3.locals } :=
      trk_blkmod hH hT3' (B := BufR 0 1 [.val (.word E), .val (.word (BitVec.ofNat 64 280))])
        (fun a ha => ⟨fun hi => hEna _ (hB a ha).1 (hB a ha).2
          (Helpers.allocated_of_inObj hL0 hi), hEna _ (hB a ha).1 (hB a ha).2⟩) hmod4 hg4 hd4 hbe4
    have hFB : FBlk p0 E Γ0 { st4 with locals := u3.locals } := by
      refine ⟨hE8, hElive.2, fun a h1 h2 => ⟨fun hi => hEna _ h1 h2
        (Helpers.allocated_of_inObj hL0 hi), hEna _ h1 h2⟩, fun p hp => ?_⟩
      have hp' : ptrsOf st3 = some p := by
        rw [← hp]
        exact (ptrsOf_congr hg4).symm
      rw [hp1] at hp'
      cases hp'
      exact hElive.1
    have hLf : ∀ kx ∈ fnewZ, kx.1 < 280 ∧ kx.1 % 8 = 0 ∧
        fld { st4 with locals := u3.locals }.memory E kx.1 = kx.2 ∧ Fits Γ0 (evK kx.1) kx.2 := by
      intro kx hkx
      obtain ⟨k1, k2, k3, k4⟩ := fnewZ_ok kx hkx
      refine ⟨k1, k2, ?_, ?_⟩
      swap
      · rw [k3]; exact fits_triv0 k4
      rw [k3]
      have := hz4 kx.1 k2 (by rw [h280]; exact k1)
      show rd st4.memory (E + BitVec.ofNat 64 kx.1) = 0
      unfold rd
      rw [this]
    have hfp4 : gword { st4 with locals := u3.locals } gFrame = some FP0 := by
      show gword st4 gFrame = some FP0
      rw [gword_congr hg4]
      exact hgf3
    exact Or.inl ⟨rfl, ⟨hT4, hFB, hLf, fun ob hob => by simp at hob, hfp4⟩, hlw0⟩
  refine hoareG_pre (P := FNS H Γ0 s0 p0 E lw0 fnewZ [] FP0 Γ0) ?_
    (fun t _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
  -- `var stk = scratch_alloc(STACK_INIT_CAP * 32)`
  refine hoareG_decCall (FunSpec.and (allocSpec_scratch_alloc hF.hX)
    (funSpec_dom (σ := σ) (X := X) _)) ?_ (fun s _ _ vs _ callee r st _ _ habn => fqb_abn r _ habn)
  intro u _ ⟨hN, hlw⟩ vs hvs callee5 v st5 ⟨hAl5, hd5, hbe5⟩ _ _
  rw [show evs u [.panop .mul [cw 32, cw 32]] =
    some [.val (.word (BitVec.ofNat 64 32 * BitVec.ofNat 64 32))] from
    evs_cons (ev_mul2 (ev_cw _ 32) (ev_cw _ 32)) evs_nil] at hvs
  cases hvs
  obtain ⟨pu, hpu, -⟩ := hN.1
  obtain ⟨q, hq, hordu, -⟩ := trk_G hN.1
  rw [hpu] at hq
  cases hq
  have hpe : ptrsOf (callEntryStateHOLFinite u callee5) = some pu := (ptrsOf_congr rfl).trans hpu
  obtain ⟨hm5, hgl5, p', hp', hord', hmo', hret5⟩ := hAl5 (by simp [Good]) _ pu rfl hpe hordu
  obtain ⟨STK, rfl, hq8, hlive, hna⟩ := hret5 _ rfl
  have h1024 : (BitVec.ofNat 64 32 * BitVec.ofNat 64 32).toNat = 1024 := rfl
  rw [h1024] at hlive hna
  have hF5 : gword st5 gFrame = some FP0 := by
    have h5 : st5.globals.lookup gFrame = u.globals.lookup gFrame := hgl5 gFrame (by decide)
    unfold gword
    rw [h5]
    exact hN.2.2.2.2
  have hMs := fnm_allocObj (ty := tSTACK) hH hM hA hN hpu hm5 (fun g hg => hgl5 g hg) hp' hord'
    hmo' hd5 hbe5 hq8 (by decide) (by decide) (by decide) rfl hlive hna stack_scalar (by decide)
    (fun Γ s o ho => hNH.triv Γ s o (Or.inl ho)) hF5
  refine hoareG_conseq (Q := FQB H Γ0 s0 p0 msg) ?_ (fun _ _ h => h)
    (fun r t _ _ h => fqb_locals hH r t _ h)
  refine hoareG_pre (fnew_t1 (Γ := Γ0 ++ [⟨STK, tSTACK, 1024⟩]) (obs := [(STK, tSTACK, 1024)])
    (lw := (nm "stk", STK) :: lw0) (L := fnewZ) hF hM hNH hG0 hp0 hns fpNs hcnt fpCnt fpLst
    fpJd hmo hcn (.tail _ (.head _)) (.tail _ (.tail _ (.tail _ (.head _)))) (.head _)
    (.tail _ (.tail _ (.head _))) (.tail _ (.tail _ (.tail _ (.tail _ (.head _)))))
    (nm_fresh (by simp only [lw0, List.map_cons, List.map_nil]; decide))
    (nm_fresh (by simp only [lw0, List.map_cons, List.map_nil]; decide))
    (nm_fresh (by simp only [lw0, List.map_cons, List.map_nil]; decide))
    (nm_fresh (by simp only [lw0, List.map_cons, List.map_nil]; decide))
    (nm_fresh (by simp only [lw0, List.map_cons, List.map_nil]; decide))
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (List.mem_singleton_self _) hfp0.symm hMV0) (fun t _ ht => ?_)
  subst ht
  exact fns_bind hH hMs hlw (nm_fresh (by simp only [lw0, List.map_cons, List.map_nil]; decide)) STK

end body

/-! ## The summary -/

/-- **`frame_new`'s precondition**: the message is a `Γ` message record (heap or scratch) whose
code length leaves room for `compute_jumpdests`' bitmap size. -/
def NewPreG (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ msg, vs = [.val (.word msg)] ∧
    (∃ o ∈ Γ, o.base = msg ∧ (o.ty = tMSGh ∨ o.ty = tMSGs) ∧ 176 ≤ o.size) ∧
    (fld s.memory msg 120).toNat + 63 < 2 ^ 64

theorem newPreG_loc (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (l : Locs) (c : Nat) :
    NewPreG vs { s with locals := l, clock := c } Γ ↔ NewPreG vs s Γ := Iff.rfl

/-- `NewPreG` survives runs that keep the `prot` cells and extend `Γ` (MSG_CODE_N is `prot`). -/
theorem newPreG_keep {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    (h : NewPreG vs s Γ) (hpk : ∀ a, ProtCell guestC Γ a → t.memory a = s.memory a)
    (hx : Ext Γ Γ') : NewPreG vs t Γ' := by
  obtain ⟨msg, rfl, ⟨o, ho, hb, ht, hsz⟩, hcn⟩ := h
  have hp15 : (guestC.ty o.ty).slot 15 = .prot := by
    rcases ht with h | h <;> rw [h]
    · exact msg_codeNProt.1
    · exact msg_codeNProt.2
  have hk : o.HasSlot 15 := by unfold Obj.HasSlot; omega
  have he := hpk (o.cell 15) ⟨o, ho, 15, hk, hp15, rfl⟩
  obtain ⟨o', ho', hb', ht', hs'⟩ := hx o ho
  refine ⟨msg, rfl, ⟨o', ho', hb'.trans hb, by rw [ht']; exact ht, le_trans hsz hs'⟩, ?_⟩
  have hc : o.cell 15 = msg + BitVec.ofNat 64 120 := by unfold Obj.cell; rw [hb]
  rw [hc] at he
  unfold fld rd
  rw [he]
  exact hcn

/-- **`frame_new`'s summary** (`SumSpecA`: `htab_new_scratch` and `htab_count` are `CSumm`s): a
return gives a fresh EV object with the initial fields of `ChildFacts` (`NewQ`); no `prot` cell
of `Γ` is written and no protected global changes. -/
theorem fnew_sumSpec {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hNH : Hooks.NewHooksL H)
    (hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [])
    (fpNs : KeepsFp σ X (nm "htab_new_scratch"))
    (hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [])
    (fpCnt : KeepsFp σ X (nm "htab_count")) (fpLst : KeepsFp σ X (nm "lst_new_scratch"))
    (fpJd : KeepsFp σ X (nm "compute_jumpdests")) :
    SumSpecA σ X guestC H (nm "frame_new") (sgFN []) NewPreG (fun _ _ _ _ => False) (NewQ tEV) := by
  refine sumSpecA_of_returns (noExc_fnew hF.hX) ?_
  rintro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 ⟨p0, hp0, -⟩ ⟨msg, rfl, hmo, hcn⟩
  rw [hF.hX] at hl
  obtain ⟨rfl, -, A, hA1, -, hla⟩ := lookupCode_one code_fnew hl
  simp only [List.cons.injEq, and_true] at hA1
  subst hA1
  have hmsg0 : s0.locals.lookup (nm "msg") = some (.val (.word msg)) := by rw [hloc]; exact hla
  obtain ⟨mo, hmo1, hmo2, hmo3, -⟩ := hmo
  have Hb := fnew_hoare hF hM hNH hns fpNs hcnt fpCnt fpLst fpJd hG0 hp0 hmsg0 ⟨mo, hmo1, hmo2, hmo3⟩
    hcn s0 hs rfl
    (by rw [hr, hv]; simp [Good])
  rw [hr] at Hb
  obtain ⟨Γ', e, hve, hT, hcf⟩ := Hb v (by rw [hv])
  obtain ⟨p', hc⟩ := trk_sumCore (sg := sgFN []) (r := r) (vs := [.val (.word msg)])
    (PWs := fun a => ProtCell guestC Γ0 a ∧ False) hT hp0 (fun a h => h.elim)
    (fun h => by simp at h) (fun p _ v' _ i rt w hrt _ => by simp at hrt)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ⟨msg, e, rfl, ?_, hcf⟩⟩
  rw [hv] at hv'
  cases hv'
  exact hve

end InitECandidate.Solver.MemSafe.Frames
