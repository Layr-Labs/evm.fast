import InitECandidate.Solver.MemSafe.WaveHelpers.HSeq
import InitECandidate.Solver.MemSafe.WaveHelpers.Common
import InitECandidate.Solver.MemSafe.WaveHelpers.BitLen
import InitECandidate.Solver.MemSafe.WaveHelpers.FeLoop

set_option autoImplicit false

/-!
# `u256_to_be_min`: the capability summary

```
fun 1 u256_to_be_min({1,1,1,1} a, 1 out) {
  var 1 len = u256_byte_length(a);            // ≤ 32
  var i = 0;
  while i <+ len { var pos = len - 1 - i; var 1 l = u256_limb(a, pos >>> 3);
                   st8 out + i, (l >>> ((pos & 7) * 8)) & 255; i = i + 1; }
  return len; }
```

`funSpec_u256_byte_length_le` bounds `len ≤ 32`, so every byte store hits `[out, out + 32)`.
The inferred signature `[.any, .buf 1]` is not sound; `csumm_u256_to_be_min` is for
`⟨[.any, .buf n], [], [], g⟩` with `32 ≤ n` (the callers pass 32-byte buffers), given the
summaries of `u256_byte_length` (`[.any]`) and `u256_limb` (`[.any, .any]`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

def umCond : ExpHOL 64 := .cmp .lower (lv (nm "i")) (lv (nm "len"))

def umLoop : ProgHOL 64 :=
  .dec (nm "pos") .one (.op .sub [.op .sub [lv (nm "len"), cw 1], lv (nm "i")])
    (.decCall (nm "l") .one (nm "u256_limb") [lv (nm "a"), .shift .lsr (lv (nm "pos")) (cw 3)]
      (.seq (.storeByte (.op .add [lv (nm "out"), lv (nm "i")])
          (.op .and [.shift .lsr (lv (nm "l")) (.panop .mul [.op .and [lv (nm "pos"), cw 7], cw 8]),
            cw 255]))
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))))

def umBody : ProgHOL 64 :=
  .decCall (nm "len") .one (nm "u256_byte_length") [lv (nm "a")]
    (.dec (nm "i") .one (cw 0) (.seq (.while umCond umLoop) (.return (lv (nm "len")))))

def umParams : List (MlS × ShapeHOL) := [(nm "a", shA), (nm "out", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_u256_to_be_min : fnEntry Guest.Software.guestFn_u256_to_be_min =
    (nm "u256_to_be_min", umParams, umBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_u256_to_be_min : guestCode (nm "u256_to_be_min") = some (umParams, umBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 88) (by decide)) ⟨_, rfl⟩
    entry_u256_to_be_min

/-! ## Locals -/

def UL (O Ln : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "out") = some (.val (.word O)) ∧ m.lookup (nm "len") = some (.val (.word Ln)) ∧
    Ln.toNat ≤ 32

def ULI (O Ln : BitVec 64) (m : LocalsH) : Prop :=
  UL O Ln m ∧ ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ Ln.toNat

def ULB (O Ln I : BitVec 64) (m : LocalsH) : Prop :=
  UL O Ln m ∧ m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat < Ln.toNat

theorem ul_sv {O Ln : BitVec 64} {s : State σ} (h : UL O Ln s.locals) {x : MlS}
    (h1 : x ≠ nm "out") (h2 : x ≠ nm "len") (v : ValueHOL 64) :
    UL O Ln (setVarHOLFinite x v s).locals :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2.1, h.2.2⟩

theorem ulb_sv {O Ln I : BitVec 64} {s : State σ} (h : ULB O Ln I s.locals) {x : MlS}
    (h1 : x ≠ nm "out") (h2 : x ≠ nm "len") (h3 : x ≠ nm "i") (v : ValueHOL 64) :
    ULB O Ln I (setVarHOLFinite x v s).locals :=
  ⟨ul_sv h.1 h1 h2 v, by rw [lk_set_ne _ _ h3]; exact h.2.1, h.2.2⟩

theorem uli_res {O Ln : BitVec 64} {m : LocalsH} (h : ULI O Ln m) {x : MlS}
    (h1 : x ≠ nm "out") (h2 : x ≠ nm "len") (h3 : x ≠ nm "i") (old : Option (ValueHOL 64)) :
    ULI O Ln (m.resVarEq (x, old)) := by
  obtain ⟨⟨e1, e2, hl⟩, I, e3, hI⟩ := h
  exact ⟨⟨by rw [lookup_resVarEq_ne _ _ h1]; exact e1, by rw [lookup_resVarEq_ne _ _ h2]; exact e2,
    hl⟩, I, by rw [lookup_resVarEq_ne _ _ h3]; exact e3, hI⟩

/-! ## The summary -/

def sigUm (n : Nat) (g : Bool) : Sig := ⟨[.any, .buf n], [], [], g⟩

theorem csumm_u256_to_be_min {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    (hX : X.code.lookup = guestCode) {sgB sgL : Sig}
    (hB : CSumm σ X C H (nm "u256_byte_length") sgB []) (hpB : sgB.params = [.any])
    (hgB : sgB.gw = [])
    (hLm : CSumm σ X C H (nm "u256_limb") sgL []) (hpL : sgL.params = [.any, .any])
    (hgL : sgL.gw = [])
    {n : Nat} (hn : 32 ≤ n) {g : Bool} (hgB2 : sgB.grows = true → g = true)
    (hgL2 : sgL.grows = true → g = true) :
    CSumm σ X C H (nm "u256_to_be_min") (sigUm n g) [] := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hpsB : ∀ pt ∈ sgB.params, pt = .any := by rw [hpB]; simp
  have hpsL : ∀ pt ∈ sgL.params, pt = .any := by rw [hpL]; simp
  refine csumm_of_heap hH hC hal hAC hNS fun vs body callee rs hl s0 _ hloc Γ0 p0 ha hh => ?_
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, rfl, -, hsb, hla, hlb⟩ := lookupCode_two code_u256_to_be_min (by decide) hl
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hsb
  set a := actOf C H (sigUm n g) [] [A, .val (.word O)] s0 Γ0 p0 with hadef
  have hout0 : BufOK a.Cb a.Γ0 a.p0 O.toNat n :=
    bufOK_of_buf (ps := (sigUm n g).params) ha.hargs0 (i := 1) (n := n) rfl rfl
  have hO : O.toNat + 32 < 2 ^ 64 := by
    obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    rcases Helpers.bufOK_bound hord hL O.isLt hout0 with h | h <;> omega
  refine hoareG_conseq (P := PreH a (fun m => m.lookup (nm "out") = some (.val (.word O))))
    (Q := HQa a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨by rw [hloc]; exact hlb, Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [sigUm] at hrt⟩
  unfold umBody
  refine hoareG_decCallH2 (L' := fun m => ∃ Ln, UL O Ln m) ha hB
    (funSpec_u256_byte_length_le hX) (by simp [hgB]) hgB2 ?_ ?_ ?_
  · intro s _ _ Γ p _ _ vs hvs
    exact ⟨argsOK_any hpsB (by rw [hpB, evs_length hvs]; rfl),
      fun x hx => absurd hx (argCells_any hpsB)⟩
  · intro s hL vs _ callee v st hR _
    obtain ⟨Ln, rfl, hLn⟩ := hR _ rfl
    exact ⟨Ln, by rw [lk_set_ne _ _ (by decide)]; exact hL, lk_set_self _ _ _, hLn⟩
  refine hoareG_exH fun Ln => ?_
  refine hoareG_decH ha.hH (L' := ULI O Ln) ?_ ?_
  · intro s _ hL v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨ul_sv hL (by decide) (by decide) _, _, lk_set_self _ _ _, by simp⟩
  refine hoareG_seqSP (L := ULI O Ln) hqa_of_abn ?_ ?_
  · refine hoareG_while (fun t h => ⟨h.1, hha_congr (s := t) ha.hH rfl rfl rfl rfl h.2⟩) ?_ ?_
    · refine hoareG_conseq (Q := SPA a (ULI O Ln)) ?_ (fun _ _ h => h) ?_
      · intro s hs ⟨⟨⟨hU, I, hi, hIL⟩, hH'⟩, hc⟩
        obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
        have hlt := lower_true (cmp_val_true hw hw0 (ev_lw hi) (ev_lw hU.2.1))
        refine (?_ : HoareG σ X (PreH a (ULB O Ln I)) umLoop (SPA a (ULI O Ln))) s hs
          ⟨⟨hU, hi, hlt⟩, hH'⟩
        unfold umLoop
        refine hoareG_decSP (L' := ULB O Ln I) (L0' := ULI O Ln) ha.hH
          (fun s _ hL v _ => ulb_sv hL (by decide) (by decide) (by decide) v) ?_
          (fun m old h => uli_res h (by decide) (by decide) (by decide) old)
        refine hoareG_decCallSP (L' := ULB O Ln I) (L0' := ULI O Ln) ha hLm (by simp [hgL]) hgL2
          ?_ (fun s hL v _ => ulb_sv hL (by decide) (by decide) (by decide) v) ?_
          (fun m old h => uli_res h (by decide) (by decide) (by decide) old)
        · intro s _ _ Γ p _ _ vs hvs
          exact ⟨argsOK_any hpsL (by rw [hpL, evs_length hvs]; rfl),
            fun x hx => absurd hx (argCells_any hpsL)⟩
        refine hoareG_seqSP (L := ULB O Ln I) spa_of_abn (hoareG_stbBufSP ha ?_) ?_
        · intro s _ hL Γ p he hh' w hw
          rw [ev_add2 (ev_lw hL.1.1) (ev_lw hL.2.1)] at hw
          cases hw
          have e : (O + I).toNat = O.toNat + I.toNat := by
            rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by have := hL.1.2.2; omega)]
          have hov : Overlap O.toNat n (panByteAlignHOL (O + I)) :=
            Helpers.overlap_byte (by rw [e]; omega) (by rw [e]; have := hL.1.2.2; omega)
          refine ⟨?_, Or.inr (Or.inl (argCells_buf_at (ps := (sigUm n g).params) (i := 1) (n := n)
            rfl rfl hov))⟩
          rcases bufOK_later ha hh' he hout0 _ hov with hs | ⟨hn, -⟩
          · exact Or.inl hs
          · exact Or.inr hn
        refine hoareG_assignSP ha.hH fun s _ hL v hv => ?_
        rw [ev_add2 (ev_lw hL.2.1) (ev_cw _ 1)] at hv
        cases hv
        have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
          rw [BitVec.toNat_add, BitVec.toNat_ofNat]; have := hL.1.2.2; omega
        exact ⟨ul_sv hL.1 (by decide) (by decide) _, _, lk_set_self _ _ _, by
          rw [hI1]; exact hL.2.2⟩
      · intro r t _ _ h
        refine ⟨h.1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h' => ?_, h.2⟩⟩
        · exact absurd rfl (abn_nb' (h.2 _ hc).1).2
        · exact absurd rfl (abn_nb' (h.2 _ hb).1).1
        · rw [hr'] at h'; cases h'
    · intro s _ h _
      exact ⟨fun _ => h, fun r' h => absurd h (by simp)⟩
  · exact hoareG_return fun t _ ⟨_, hH'⟩ v _ =>
      hqa_of_hha (t := emptyLocalsHOLFinite t) (hha_congr (s := t) ha.hH rfl rfl rfl rfl hH') _

end InitECandidate.Solver.MemSafe.WaveHelpers
