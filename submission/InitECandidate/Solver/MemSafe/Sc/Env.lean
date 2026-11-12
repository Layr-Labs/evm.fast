import InitECandidate.Solver.MemSafe.Sc.Body

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

/-!
# The checker environments along `set_code`

The fold checker rejects `set_code` only at `jset(…, sl)` because `sl` (an `alloc(16)` result)
does not fit `ptr tCSL`. The proof is the fold checker's, except for the `then` branch, which is
done by hand: `sl` is adopted as a `tCSL` object (`gp tCSL 0`) before the `jset`.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

def scCaps : List Cap :=
  [⟨nm "journal", 9, [], true⟩, ⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩,
    ⟨nm "*", 11, [], true⟩, ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩,
    ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩, ⟨nm "*", 12, [], true⟩, ⟨nm "sk_buf", 24, [], false⟩]

def scSig : Sig := ⟨[.buf 20, .any, .any], [], [Hooks.gJn], true⟩

/-- The checking environment of `set_code`. -/
def scE : CEnv := ⟨upg Types.guestC scCaps, ShardsJL.tab26, scSig, scCaps⟩

def Ai : AEnv := initEnv scParams scSig.params 0 ⟨[], []⟩

def argsA32 : List (ExpHOL 64) := [cw 32]
def argsA16 : List (ExpHOL 64) := [cw 16]
def argsMe : List (ExpHOL 64) := [lv (nm "h"), .var .global (nm "empty_code_hash"), cw 32]
def sgMe : Sig := ⟨[.any, .any, .any], [], [], false⟩

def kcStmt : ProgHOL 64 :=
  .call (some (none, none)) (nm "keccak256") [lv (nm "code"), lv (nm "code_len"), lv (nm "h")]

def A1 : AEnv := bindRes Ai (argsA32.map (aev scE.C Ai chkFuel)) allocSig .one (nm "h")
def A2 : AEnv := bindRes A1 (argsMe.map (aev scE.C A1 chkFuel)) sgMe .one (nm "eq")
def A3 : AEnv := bindRes A2 (argsA16.map (aev scE.C A2 chkFuel)) allocSig .one (nm "sl")
/-- After adopting `sl`: a `tCSL` object; its temporary is dead. -/
def AJ : AEnv := ⟨setL (nm "sl") (.gp Types.tCSL 0) A3.L, A2.T ++ [none]⟩

/-- The output of `p; q` (normal exit of `p`). -/
def seqO (op oq : AOut) : AOut := ⟨oq.nrm, joinO op.brk oq.brk, joinO op.cnt oq.cnt⟩

/-- The output of the `then` branch. -/
def Othen : AOut := ⟨some ⟨restL (nm "sl") (A2.L.lookup (nm "sl")) AJ.L, AJ.T⟩, none, none⟩
def Oite : AOut := Othen.join ⟨some A2, none, none⟩

theorem fs_a32 : findSig scE Ai (nm "alloc") (argsA32.map (aev scE.C Ai chkFuel)) =
    some allocSig := by rfl
theorem fs_me : findSig scE A1 (nm "memeq") (argsMe.map (aev scE.C A1 chkFuel)) = some sgMe := by rfl
theorem fs_a16 : findSig scE A2 (nm "alloc") (argsA16.map (aev scE.C A2 chkFuel)) =
    some allocSig := by rfl
theorem chk_kc : chk scE A1 kcStmt = some ⟨some A1, none, none⟩ := by rfl
theorem chk_js : chk scE AJ scJs = some ⟨some AJ, none, none⟩ := by rfl
theorem chk_skip : chk scE A2 .skip = some ⟨some A2, none, none⟩ := by rfl

def AjN : AEnv := (Oite.nrm).getD A2
theorem oite_eq : Oite = ⟨some AjN, none, none⟩ := by rfl
theorem chk_tail : (chk scE AjN scTail).isSome = true := by decide +kernel

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.chk_tail
#print axioms InitECandidate.Solver.MemSafe.Sc.chk_js
