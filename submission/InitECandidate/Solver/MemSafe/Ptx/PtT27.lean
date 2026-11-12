import InitECandidate.Solver.MemSafe.Ptx.PtT26
import InitECandidate.Solver.MemSafe.HtabEntries.Item

/-!
# F3h: the deletion loop (`ptS168` to `ptS171`)

`var del = out[24]; if del != 0 { dcap = del[24]; i = 0; while i < dcap { s = htab_item(del, i); if s.0 != 0 { clear_account_preserving_balance(s.1) }; i++ } }`

The delete table is a dropped frame-local object: the cells `htab_item` reads are frozen (`DelPreF`), the keys are writable buffers
that miss the frozen cells.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section gen
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam} {p : Ptrs}

/-- A state with the same memory, globals, `memaddrs` and `be`. -/
theorem tl_same {t : State σ} (h : TlS A ref Z O u Γ p) (hm : t.memory = u.memory) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hb : t.be = u.be) : TlS A ref Z O t Γ p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  refine ⟨(ptrsOf_congr hg).trans h1, h2, h3, h4, Frames.G_congr Hooks.guestHooksR_lawful hm hg hd hb h5,
    fun g hg' => by rw [hg]; exact h6 g hg', jrNZ_congr hg h7, ?_, ?_, h10, fun a ha => by rw [hm]; exact h11 a ha,
    h12, h13, fun a ha => by rw [hm]; exact h14 a ha⟩
  · obtain ⟨e, he, hs⟩ := h8
    exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h9
    exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩

end gen

theorem cond_ne_gen {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64} (ha : EvI s a (.val (.word x)))
    (hb : EvI s b (.val (.word y)))
    (h : ∃ w, ev s (.cmp .notEqual a b) = some (.val (.word w)) ∧ w ≠ 0) : x ≠ y := by
  obtain ⟨w, hw, hw0⟩ := h
  obtain ⟨x', y', hx', hy', hf⟩ := Spec.cmp_true hw hw0
  have e1 := ha _ hx'
  have e2 := hb _ hy'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at e1 e2
  rw [e1, e2] at hf
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hf

theorem ofNat_toNat_self (x : BitVec 64) : BitVec.ofNat 64 x.toNat = x := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt x.isLt]

theorem env_forget_s {En : Env} {i s : MlS} (hs : En s = none) (v0 v1 w : ValueHOL 64) :
    ∀ y v, (En.set i v1) y = some v → (((En.set i v0).set s w).set i v1) y = some v := by
  intro y v h
  by_cases hy : y = i
  · subst hy
    rw [env_set_self] at h ⊢
    exact h
  · rw [env_set_ne _ _ hy] at h ⊢
    by_cases hys : y = s
    · subst hys; rw [hs] at h; cases h
    · rw [env_set_ne _ _ hys, env_set_ne _ _ hy]; exact h

theorem clear_fin : ptAllNames.contains (nm "clear_account_preserving_balance") = true := by decide_cbv

section call
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj}

/-- `hn_callT` with an extra precondition `Pc` available to the argument proofs. -/
theorem hn_callTP {En : Env} {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)} {Pc : State σ → Prop}
    (hf : CSumm σ guestCtx guestC (HR σ) f sg cs) (hcs : CsOK cs)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hjo : JrOut sg.gw) (hfin : ptAllNames.contains f = true)
    (hargs : ∀ s : State σ, PAg (TL A ref Z O) En s → Pc s → ∀ vs, evs s args = some vs → ∀ Γ p,
      TlS A ref Z O s Γ p → ArgsOK guestC Γ p sg.params vs)
    (hargsY : ∀ s : State σ, PAg (TL A ref Z O) En s → Pc s → ∀ vs, evs s args = some vs → ∀ a,
      ArgCells sg.params vs a → ¬ A.Y a) :
    HN (fun s => PAg (TL A ref Z O) En s ∧ Pc s) (.call (some (none, none)) f args) (PAg (TL A ref Z O) En) := by
  refine hoare_callD ((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code hfin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨⟨Γ, p, hr⟩, hlk⟩, hpc⟩ := hpa
  obtain ⟨Γ', p', hc, hrun, -⟩ := tl_call_core hR hgl hgw hjo (fun _ _ Γ a hw => capPW_st hcs.st hw) hr
    (hargs s ⟨⟨Γ, p, hr⟩, hlk⟩ hpc vs hvs Γ p hr) (hargsY s ⟨⟨Γ, p, hr⟩, hlk⟩ hpc vs hvs) (preT hcs hr callee)
  exact ⟨rfl, ⟨Γ', p', hrun⟩, hlk⟩

end call

section del
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj}

/-- What the frozen header and order cells give for one item. -/
theorem del_item_facts {d : BitVec 64} (hF : DelPreF K d) {u : State σ} {Γ : Gam} {p : Ptrs}
    (h : TlS K.A ref Z O u Γ p) {x : BitVec 64} (hx : x.toNat < Inv.CNT K.E.s0.memory d) :
    Inv.CNT u.memory d = Inv.CNT K.E.s0.memory d ∧
    Inv.keyPtr u.memory d (Inv.ORD u.memory d x) = Inv.keyPtr K.E.s0.memory d (Inv.ORD K.E.s0.memory d x) := by
  have h8 : Inv.hdr u.memory d 8 = Inv.hdr K.E.s0.memory d 8 := h.kY _ hF.y8
  have h24 : Inv.hdr u.memory d 24 = Inv.hdr K.E.s0.memory d 24 := h.kY _ hF.y24
  have h32 : Inv.hdr u.memory d 32 = Inv.hdr K.E.s0.memory d 32 := h.kY _ hF.y32
  have h48 : Inv.hdr u.memory d 48 = Inv.hdr K.E.s0.memory d 48 := h.kY _ hF.y48
  have hxb : x.toNat < 2 ^ 58 := by have := hF.cnt; omega
  have hcell : Inv.hdr K.E.s0.memory d 48 + x * BitVec.ofNat 64 8 =
      Inv.hdr K.E.s0.memory d 48 + BitVec.ofNat 64 (8 * x.toNat) := by rw [bv_mul_eight hxb]
  have hord : Inv.ORD u.memory d x = Inv.ORD K.E.s0.memory d x := by
    unfold Inv.ORD
    rw [h48, hcell]
    exact h.kY _ (hF.ord x.toNat hx)
  refine ⟨by unfold Inv.CNT; rw [h24], ?_⟩
  unfold Inv.keyPtr
  rw [h32, h8, hord]

/-- The tail of the loop body: `if s.0 != 0 { clear_account_preserving_balance(s.1) }; i = i + 1`. -/
theorem hn_delTail {En : Env} {d x a b c : BitVec 64} (hF : DelPreF K d)
    (hxc : x.toNat < Inv.CNT K.E.s0.memory d)
    (hab : a ≠ 0 → b = Inv.keyPtr K.E.s0.memory d (Inv.ORD K.E.s0.memory d x))
    (hs : En (nm "s") = none) :
    HN (PAg (TL K.A ref Z O) ((En.set (nm "i") (.val (.word x))).set (nm "s") (wv [a, b, c])))
      ptS180 (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word (x + BitVec.ofNat 64 1))))) := by
  have hB := bloc_tl K.A ref Z (O := O)
  have hsA : ((En.set (nm "i") (.val (.word x))).set (nm "s") (wv [a, b, c])) (nm "s") = some (wv [a, b, c]) :=
    env_set_self _ _ _
  have hiA : ((En.set (nm "i") (.val (.word x))).set (nm "s") (wv [a, b, c])) (nm "i") = some (.val (.word x)) := by
    rw [env_set_ne _ _ (by decide)]; exact env_set_self _ _ _
  unfold ptS180
  refine hseqN (P1 := PAg (TL K.A ref Z O) ((En.set (nm "i") (.val (.word x))).set (nm "s") (wv [a, b, c]))) ?_ ?_
  · unfold ptS181
    refine hn_ite ?_ (hn_pre hn_skip (fun s _ h => h.1))
    refine hn_callTP (Pc := fun s => ∃ w, ev s (.cmp .notEqual (.rfield 0 (lv (nm "s"))) (cw 0)) =
        some (.val (.word w)) ∧ w ≠ 0) tab_clear_account csOK_sk_tbl_jr ⟨by decide, by decide⟩ (by decide)
      clear_fin ?_ ?_
    · intro s hpa hpc vs hvs Γ p hr
      have hA : EvI s (.rfield 0 (lv (nm "s"))) (.val (.word a)) := by
        have := evI_rf (evI_lv (hpa.2 _ _ hsA)) (i := 0) (by simp)
        simpa using this
      have hne : a ≠ 0 := cond_ne_gen hA (evI_cw s 0) hpc
      obtain ⟨x1, rfl, hx1⟩ := evs_single hvs
      have hB1 : EvI s (.rfield 1 (lv (nm "s"))) (.val (.word b)) := by
        have := evI_rf (evI_lv (hpa.2 _ _ hsA)) (i := 1) (by simp)
        simpa using this
      have hx1' := hB1 _ hx1
      subst hx1'
      have hbuf := hF.keyBuf x.toNat hxc
      rw [ofNat_toNat_self] at hbuf
      refine WaveHelpers.argsOK_1 ⟨b, rfl, ?_⟩
      rw [hab hne]
      exact tl_bufOK hr hbuf
    · intro s hpa hpc vs hvs a'
      have hB1 : EvI s (.rfield 1 (lv (nm "s"))) (.val (.word b)) := by
        have := evI_rf (evI_lv (hpa.2 _ _ hsA)) (i := 1) (by simp)
        simpa using this
      have hA : EvI s (.rfield 0 (lv (nm "s"))) (.val (.word a)) := by
        have := evI_rf (evI_lv (hpa.2 _ _ hsA)) (i := 0) (by simp)
        simpa using this
      have hne : a ≠ 0 := cond_ne_gen hA (evI_cw s 0) hpc
      obtain ⟨x1, rfl, hx1⟩ := evs_single hvs
      have hx1' := hB1 _ hx1
      subst hx1'
      rintro ⟨i, w, hw, ⟨n, hn, hov⟩ | ⟨j, c', d', x', hn, -, -⟩⟩
      · rcases i with _ | i
        · simp only [List.getElem?_cons_zero, Option.some.injEq, MemSafe.PT.buf.injEq] at hn
          subst hn
          simp only [argW, List.getElem?_cons_zero, wordOf, Option.some.injEq] at hw
          subst hw
          rw [hab hne] at hov
          have := hF.keyY x.toNat hxc a' (by rw [ofNat_toNat_self]; exact hov)
          exact this
        · simp at hn
      · rcases i with _ | i <;> simp at hn
  · refine hoare_post (hassignT_g hB (w' := x + BitVec.ofNat 64 1) (fun s hpa v hv => ?_))
      (fun r t _ _ h => ⟨h.1, pag_mono h.2 (env_forget_s hs _ _ _) (fun s h => h)⟩)
    exact (evI_add (evI_lv (hpa.2 _ _ hiA)) (evI_cw s 1)) v hv

/-- **The loop body**: `s = htab_item(del, i); ...`. -/
theorem hn_delBody {En : Env} {d x : BitVec 64} (hF : DelPreF K d) (hxc : x.toNat < Inv.CNT K.E.s0.memory d)
    (hdel : En (nm "del") = some (.val (.word d))) (hs : En (nm "s") = none) :
    HN (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word x)))) ptS179
      (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word (x + BitVec.ofNat 64 1))))) := by
  have hB := bloc_tl K.A ref Z (O := O)
  have hs1 : (En.set (nm "i") (.val (.word (x + BitVec.ofNat 64 1)))) (nm "s") = none := by
    rw [env_set_ne _ _ (by decide)]; exact hs
  have hdel1 : (En.set (nm "i") (.val (.word x))) (nm "del") = some (.val (.word d)) := by
    rw [env_set_ne _ _ (by decide)]; exact hdel
  have hi1 : (En.set (nm "i") (.val (.word x))) (nm "i") = some (.val (.word x)) := env_set_self _ _ _
  unfold ptS179
  refine hdecCallK (resIns_PAg hB hs1) (HtabEntries.funSpec_item_j guestCtx_code) ?_
  intro s hs' hpa vs hvs callee v st hR hst hsh
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  obtain ⟨hm, hg, hd', hb', hRet⟩ := hR
  obtain ⟨x1, x2, rfl, hx1, hx2⟩ := evs2 hvs
  have hx1' : x1 = .val (.word d) := evI_lv (hlk _ _ hdel1) x1 hx1
  have hx2' : x2 = .val (.word x) := evI_lv (hlk _ _ hi1) x2 hx2
  subst hx1' hx2'
  obtain ⟨ws, hlen, rfl⟩ := eq_wv_of_shapeEq' (k := 3) hsh
  obtain ⟨a, b, c, rfl⟩ : ∃ a b c, ws = [a, b, c] := by
    match ws, hlen with
    | [a, b, c], _ => exact ⟨a, b, c, rfl⟩
  have hHi := hRet _ rfl d x rfl
  have hre : TlS K.A ref Z O (callEntryStateHOLFinite s callee) Γ p := tl_loc hr callee (s.clock - 1)
  have hst1 : TlS K.A ref Z O st Γ p := tl_same hre hm (AllocImpl.hfm_ext (funext hg)) hd' hb'
  have hfacts := del_item_facts hF hre hxc
  have hab : a ≠ 0 → b = Inv.keyPtr K.E.s0.memory d (Inv.ORD K.E.s0.memory d x) := fun hne => by
    obtain ⟨-, hbb, -⟩ := hHi a b c rfl hne
    rw [hbb]
    exact hfacts.2
  refine hoare_pre (hn_delTail (En := En) (ref := ref) (Z := Z) (O := O) (c := c) hF hxc hab hs) ?_
  intro t _ ht
  subst ht
  exact ⟨⟨Γ, p, tl_set (tl_loc hst1 s.locals st.clock) _ _⟩, lke_set (lke_restore hlk) _ _⟩

/-- **The loop**. -/
theorem hn_delLoop {En : Env} {d dw : BitVec 64} (hF : DelPreF K d) (hdw : dw.toNat = Inv.CNT K.E.s0.memory d)
    (hdel : En (nm "del") = some (.val (.word d))) (hdcap : En (nm "dcap") = some (.val (.word dw)))
    (hs : En (nm "s") = none) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word 0)))) ptS178
      (fun r t => r = none ∧ PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word (BitVec.ofNat 64 dw.toNat)))) t) := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS178
  have hcnt := hF.cnt
  have hdc : ∀ x : BitVec 64, (En.set (nm "i") (.val (.word x))) (nm "dcap") = some (.val (.word dw)) := fun x => by
    rw [env_set_ne _ _ (by decide)]; exact hdcap
  have h32 : (2 : Nat) ^ 32 < 2 ^ 63 := by norm_num
  have h58 : (2 : Nat) ^ 32 < 2 ^ 58 := by norm_num
  rw [← hdw] at hcnt
  have := hn_cloopG (B := TL K.A ref Z O) (En := En) (i := nm "i") (N := dw.toNat) hB
    (cond := .cmp .less (lv (nm "i")) (lv (nm "dcap"))) (body := ptS179)
    (fun x s hx hpa hc => cond_lt_gen (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_lv (hpa.2 _ _ (hdc x)))
      (by omega) (by omega) hc)
    (fun x s hx hpa hc => cond_lt_gen_false (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_lv (hpa.2 _ _ (hdc x)))
      (by omega) (by omega) hc)
    (by omega)
    (fun x hx => hn_delBody hF (by rw [← hdw]; exact hx) hdel hs)
  exact this

end del

end InitECandidate.Solver.MemSafe.Ptx
