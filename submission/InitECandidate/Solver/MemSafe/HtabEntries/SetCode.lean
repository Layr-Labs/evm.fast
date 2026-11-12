import InitECandidate.Solver.MemSafe.HtabEntries.AcctCopy

/-!
# `set_code`: its precondition, and the adapter to unconstrained arguments

```
fun 1 set_code(1 addr, 1 code, 1 code_len) {
  var 1 h = alloc(32); keccak256(code, code_len, h); var 1 eq = memeq(h, empty_code_hash, 32);
  if eq == 0 { var 1 sl = alloc(16); st sl, code; st sl + 8, code_len; jset(lds 1 (ts + 48), h, sl); }
  var 1 a = get_account(addr); a = acct_copy(a); st a + 48, h; modify_state_commit(addr, a);
  return 0; }
```

`addr` reaches `htab_set(t, addr, …)` (through `modify_state_commit` → `set_account` → `jset`)
and `get_account(addr)`, whose signatures take it as `buf 20`. With the journal entries and the
fresh-result `acct_copy` entry (`AcctCopy.lean`) the fold accepts `set_code` with **`scSig =
⟨[buf 20, any, any], [], [journal_n], true⟩`** (= `Sigs1`; mirror caps: all table types and
`tJOURNAL`). Its precondition is `BufOK guestC Γ p addr 20` (every cell overlapping the 20 bytes
is a `scalar` cell of a `Γ` object or an allocated cell outside `Γ`) plus `ReqOK` of the caps; the
`buf` makes those cells part of the footprint.

`set_code_addrIn`: from that fold entry, the form with unconstrained arguments `scAnySig =
⟨[any, any, any], [], [journal_n], true⟩` (= `Frames.sgA 3 [journal_n]`) under the precondition
`AddrIn` (every overlapped cell is a `scalar` cell of a `Γ` object; such cells are writable by
anyone, so the `buf` footprint disappears).
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The fold signature of `set_code` (`Sigs1`). -/
def scSig : Sig := ⟨[.buf 20, .any, .any], [], [gJn], true⟩

/-- Unconstrained arguments (`Frames.sgA 3 [journal_n]`). -/
def scAnySig : Sig := ⟨[.any, .any, .any], [], [gJn], true⟩

/-- **The address precondition**: the first argument is a word `A` and every cell overlapping
`[A, A + 20)` is a `scalar` cell of a `Γ` object. -/
def AddrIn (Γ : Gam) (vs : List (ValueHOL 64)) : Prop :=
  ∃ A : BitVec 64, vs[0]? = some (.val (.word A)) ∧ ∀ a, Overlap A.toNat 20 a → SCell guestC Γ a

theorem argCells_scSig {vs : List (ValueHOL 64)} {A : BitVec 64}
    (hA : vs[0]? = some (.val (.word A))) {a : BitVec 64} (h : ArgCells scSig.params vs a) :
    Overlap A.toNat 20 a := by
  obtain ⟨i, w, hw, ⟨n, hn, ho⟩ | ⟨j, c, d, x, hb, -⟩⟩ := h
  · match i, hn, hw with
    | 0, hn, hw =>
      simp only [scSig, List.getElem?_cons_zero, Option.some.injEq, PT.buf.injEq] at hn
      subst hn
      simp only [argW, hA, wordOf, Option.some.injEq] at hw
      subst hw
      exact ho
    | 1, hn, _ => simp [scSig] at hn
    | 2, hn, _ => simp [scSig] at hn
    | _ + 3, hn, _ => simp [scSig] at hn
  · match i, hb with
    | 0, hb => simp [scSig] at hb
    | 1, hb => simp [scSig] at hb
    | 2, hb => simp [scSig] at hb
    | _ + 3, hb => simp [scSig] at hb

/-- **`set_code` with unconstrained arguments** under `AddrIn`, from its fold entry. -/
theorem set_code_addrIn {H : Hooks σ} {cs : List Cap}
    (h : CSumm σ X guestC H (nm "set_code") scSig cs) :
    SumSpecA σ X guestC H (nm "set_code") scAnySig (fun vs s Γ => AddrIn Γ vs ∧ ReqOK cs s Γ)
      (fun _ s Γ a => CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) := by
  rintro vs body callee rs hl s hs hloc r hr hg hna Γ hG ⟨p, hp, hlen, -⟩ ⟨⟨A, hA0, hsc⟩, hreq⟩
  have hargs : ArgsOK guestC Γ p scSig.params vs := by
    refine ⟨hlen, fun i pt v hpt hv => ?_⟩
    match i, hpt with
    | 0, hpt =>
      simp only [scSig, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt
      rw [hA0] at hv
      cases hv
      exact ⟨A, rfl, fun a ha => Or.inl (hsc a ha)⟩
    | 1, hpt =>
      simp only [scSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    | 2, hpt =>
      simp only [scSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    | _ + 3, hpt => simp [scSig] at hpt
  obtain ⟨Γ', p1, p2, hc, -⟩ := h vs body callee rs hl s hs hloc r hr hg hna Γ hG ⟨p, hp, hargs⟩ hreq
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩ := hc
  refine ⟨Γ', p1, p2, ⟨h1, h2, h3, h4, h5, h6, ?_, h8, h9, h10⟩, trivial⟩
  refine h7.mono fun a ha => ?_
  rcases ha with h' | h' | h' | h'
  · exact Or.inl h'
  · exact Or.inl (Struct.sCell_wCell (hsc a (argCells_scSig hA0 h')))
  · exact Or.inr (Or.inr (Or.inl h'))
  · exact Or.inr (Or.inr (Or.inr h'))

end InitECandidate.Solver.MemSafe.HtabEntries
