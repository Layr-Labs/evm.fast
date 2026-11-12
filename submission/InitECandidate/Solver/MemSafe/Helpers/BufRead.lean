import InitECandidate.Solver.MemSafe.Helpers.Seq

set_option autoImplicit false

/-!
# `buffer_read`

`buffer_read(buf, buf_len, start, size, out)` copies `avail = min(buf_len - start, size)` bytes
(when `start < buf_len`, else `avail = 0`) and zeroes the remaining `size - avail` bytes:
`memcpy(out, buf + start, avail); memzero(out + avail, size - avail)`.

* `foot_buffer_read`: every good result keeps the globals and changes memory only in the cells
  overlapping `[out, out + size)`, when `size = 0` or `out + size ≤ scratchEnd`.
* `summ_buffer_read`: the `Summ` for `sigBufferRead = [.any, .any, .any, .any, .bufArg 3 1 0]`
  (`grows := false`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def bufN : MlS := nm "buf"
def blN : MlS := nm "buf_len"
def stN : MlS := nm "start"
def szN : MlS := nm "size"
def outN : MlS := nm "out"
def avN : MlS := nm "avail"

def bufferReadBody : ProgHOL 64 :=
  .dec avN .one (cw 0)
    (.seq
      (.ite (.cmp .lower (lv stN) (lv blN))
        (.seq (.assign .local avN (.op .sub [lv blN, lv stN]))
          (.seq (.ite (.cmp .lower (lv szN) (lv avN)) (.assign .local avN (lv szN)) .skip)
            (callD (nm "memcpy") [lv outN, .op .add [lv bufN, lv stN], lv avN])))
        .skip)
      (.seq (callD (nm "memzero") [.op .add [lv outN, lv avN], .op .sub [lv szN, lv avN]])
        (.return (cw 0))))

def bufferReadParams : List (MlS × ShapeHOL) :=
  [(bufN, .one), (blN, .one), (stN, .one), (szN, .one), (outN, .one)]

theorem entry_buffer_read : fnEntry Guest.Software.guestFn_buffer_read =
    (nm "buffer_read", bufferReadParams, bufferReadBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_buffer_read :
    guestCode (nm "buffer_read") = some (bufferReadParams, bufferReadBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 462) (by decide))
    ⟨_, rfl⟩ entry_buffer_read

/-- The parameters keep their values. -/
def brL (B S Z O : BitVec 64) (m : Locals) : Prop :=
  m.lookup bufN = some (.val (.word B)) ∧ m.lookup stN = some (.val (.word S)) ∧
    m.lookup szN = some (.val (.word Z)) ∧ m.lookup outN = some (.val (.word O))

/-- ... and `avail ≤ size`. -/
def brA (B S Z O : BitVec 64) (m : Locals) : Prop :=
  brL B S Z O m ∧ ∃ A : BitVec 64, m.lookup avN = some (.val (.word A)) ∧ A.toNat ≤ Z.toNat

theorem brL_upd_av {B S Z O : BitVec 64} {m : Locals} (h : brL B S Z O m) (v : ValueHOL 64) :
    brL B S Z O (m.update (avN, v)) := by
  obtain ⟨h1, h2, h3, h4⟩ := h
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [lookup_update_ne _ _ (by decide)]; exact h1
  · rw [lookup_update_ne _ _ (by decide)]; exact h2
  · rw [lookup_update_ne _ _ (by decide)]; exact h3
  · rw [lookup_update_ne _ _ (by decide)]; exact h4

theorem toNat_add_of_lt {O A : BitVec 64} (h : O.toNat + A.toNat < 2 ^ 64) :
    (O + A).toNat = O.toNat + A.toNat := by
  rw [BitVec.toNat_add, Nat.mod_eq_of_lt h]

theorem toNat_sub_of_le {Z A : BitVec 64} (h : A.toNat ≤ Z.toNat) :
    (Z - A).toNat = Z.toNat - A.toNat := by
  rw [BitVec.toNat_sub]
  have := Z.isLt
  have := A.isLt
  rw [show 2 ^ 64 - A.toNat + Z.toNat = 2 ^ 64 + (Z.toNat - A.toNat) by omega, Nat.add_mod_left,
    Nat.mod_eq_of_lt (by omega)]

/-- **`buffer_read` footprint.** -/
theorem foot_buffer_read (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "buffer_read") (BufPre 4 3) (BufR 4 3) := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, Bv, BLv, Sv, Zv, Ov, rfl, hB, -, hS, hZ, hO, hlb, -, hls, hlz, hlo⟩ :=
    lookupCode_five code_buffer_read (by decide) hl
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hB
  obtain ⟨S, rfl⟩ := val_of_shapeEq_one hS
  obtain ⟨Z, rfl⟩ := val_of_shapeEq_one hZ
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hO
  obtain ⟨O', Z', hO', hZ', hb⟩ := hP
  cases hO'
  cases hZ'
  -- the footprint `[O, O + Z)`
  let Rf : BitVec 64 → Prop := BufR 4 3 [.val (.word B), BLv, .val (.word S), .val (.word Z),
    .val (.word O)]
  have hRf : ∀ a, Overlap O.toNat Z.toNat a → Rf a := fun a h => ⟨O, Z, rfl, rfl, h⟩
  have hOA : ∀ A : BitVec 64, A.toNat ≤ Z.toNat → O.toNat + A.toNat < 2 ^ 64 := by
    intro A hA'
    have : scratchEnd < 2 ^ 63 := by decide
    rcases hb with h | h <;> omega
  have hL0 : brL B S Z O s0.locals := by
    rw [hloc]; exact ⟨hlb, hls, hlz, hlo⟩
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  have hpost : ∀ (t : State σ), BWPost Rf s0 t → BWPost Rf s0
      { t with locals := t.locals.resVarEq (avN, s0.locals.lookup avN) } := fun _ h => h
  refine hoareG_conseq (P := LPre Rf s0 (brA B S Z O)) (Q := LP Rf s0 (fun _ => True)) ?_ ?_
    fun _ t _ _ h => hpost t h.1
  · refine hoareG_seqL (L2 := brA B S Z O) ?_ ?_
    · refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨h.1.2, fun _ => h.1.1, fun _ h => nomatch h⟩)
      refine hoareG_pre (P := LPre Rf s0 (brA B S Z O)) ?_ fun _ _ h => h.1
      refine hoareG_seqL (L2 := fun m => brL B S Z O m ∧ ∃ V : BitVec 64,
        m.lookup avN = some (.val (.word V))) ?_ ?_
      · refine hoareG_assignL fun t _ hL v hv => ⟨brL_upd_av hL.1 v, ?_⟩
        obtain ⟨x, y, -, -, rfl⟩ := Spec.Inv.ev_sub2_inv hv
        exact ⟨x - y, lookup_update_self _ _ _⟩
      · refine hoareG_seqL (L2 := brA B S Z O) ?_ ?_
        · refine hoareG_ite ?_ ?_
          · refine hoareG_pre (P := LPre Rf s0 (fun m => brL B S Z O m ∧ ∃ V : BitVec 64,
              m.lookup avN = some (.val (.word V)))) ?_ fun _ _ h => h.1
            refine hoareG_assignL fun t _ hL v hv => ⟨brL_upd_av hL.1 v, Z, ?_, Nat.le_refl _⟩
            rw [ev_lw hL.1.2.2.1] at hv
            cases hv
            exact lookup_update_self _ _ _
          · refine hoareG_skip fun t _ ⟨⟨hL, hbw⟩, hc⟩ => ⟨hbw, fun _ => ⟨hL.1, ?_⟩, fun _ h => nomatch h⟩
            obtain ⟨V, hV⟩ := hL.2
            obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
            rw [ev_lw hL.1.2.2.1] at hx
            cases hx
            rw [ev_lw hV] at hy
            cases hy
            exact ⟨V, hV, lower_false hxy⟩
        · refine hoareG_callFoot (foot_memcpy hC hA) fun t _ ⟨hL, _⟩ vs hvs => ?_
          obtain ⟨⟨hb', hs', hz', ho'⟩, A, ha', hAZ⟩ := hL
          rw [evs_cons (ev_lw ho') (evs_cons (ev_add2 (ev_lw hb') (ev_lw hs'))
            (evs_cons (ev_lw ha') evs_nil))] at hvs
          cases hvs
          have := hOA A hAZ
          refine ⟨⟨O, A, rfl, rfl, ?_⟩, fun a ⟨D, N, hD, hN, hov⟩ => ?_⟩
          · rcases hb with h | h
            · left; omega
            · right; omega
          · cases hD
            cases hN
            refine hRf a ⟨hov.1, hov.2.1, ?_⟩
            have := hov.2.2
            omega
    · refine hoareG_seqL (L2 := brA B S Z O) ?_ hoareG_returnL
      refine hoareG_callFoot (foot_memzero hC hA) fun t _ ⟨hL, _⟩ vs hvs => ?_
      obtain ⟨⟨_, _, hz', ho'⟩, A, ha', hAZ⟩ := hL
      rw [evs_cons (ev_add2 (ev_lw ho') (ev_lw ha'))
        (evs_cons (ev_sub2 (ev_lw hz') (ev_lw ha')) evs_nil)] at hvs
      cases hvs
      have hoa := toNat_add_of_lt (hOA A hAZ)
      have hza := toNat_sub_of_le hAZ
      refine ⟨⟨O + A, Z - A, rfl, rfl, ?_⟩, fun a ⟨D, N, hD, hN, hov⟩ => ?_⟩
      · rw [hoa, hza]
        rcases hb with h | h
        · left; omega
        · right; omega
      · cases hD
        cases hN
        rw [hoa, hza] at hov
        refine hRf a ⟨hov.1, ?_, ?_⟩
        · have := hov.2.1; omega
        · have := hov.2.2; omega
  · intro t _ ht
    subst ht
    exact ⟨⟨brL_upd_av hL0 _, 0, lookup_update_self _ _ _, by simp⟩, rfl, fun _ _ => rfl⟩

def sigBufferRead : Sig := { params := [.any, .any, .any, .any, .bufArg 3 1 0], grows := false }

theorem summ_buffer_read {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "buffer_read") sigBufferRead :=
  summ_of_foot hH hT rfl (foot_buffer_read hC hA)
    (fun _ _ _ hord hL hA' => bufPre_of_args (i := 4) rfl hord hL hA')
    (fun _ _ _ h => argCells_of_bufR (i := 4) rfl h)

end InitECandidate.Solver.MemSafe.Helpers
