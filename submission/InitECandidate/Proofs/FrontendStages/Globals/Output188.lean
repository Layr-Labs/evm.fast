import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data188
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate168
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody188_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 104#64]),
    Flapjack.Exp.const 32#64]

def globalBody188_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le64"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 104#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "len"]

def globalBody188_2 : Prog (BitVec 64) :=
.seq globalBody188_0 globalBody188_1

def globalBody188_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_pair"
  [Flapjack.Exp.var Flapjack.VarKind.local "root",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 104#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody188_4 : Prog (BitVec 64) :=
.seq globalBody188_2 globalBody188_3

def globalBody188_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody188_6 : Prog (BitVec 64) :=
.seq globalBody188_4 globalBody188_5

def globalData188 : Decl (BitVec 64) :=
.function { name := "mix_in_length", inline := false, exported := false, params := [("root", Flapjack.Shape.one), ("len", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody188_6, returnShape := (Flapjack.Shape.one) }
def globalOutput188 := Pancake.PanLang.declToHOL globalData188
end InitECandidate.Proofs.FrontendStages.Declarations
