import InitECandidate.Proofs.FrontendStages.Declarations.Data899
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody899_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "hi4"]

def globalBody899_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 4#64],
    Flapjack.Exp.var Flapjack.VarKind.local "mid8"]

def globalBody899_2 : Prog (BitVec 64) :=
.seq globalBody899_0 globalBody899_1

def globalBody899_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 12#64],
    Flapjack.Exp.var Flapjack.VarKind.local "lo8"]

def globalBody899_4 : Prog (BitVec 64) :=
.seq globalBody899_2 globalBody899_3

def globalBody899_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody899_6 : Prog (BitVec 64) :=
.seq globalBody899_4 globalBody899_5

def globalData899 : Decl (BitVec 64) := .function { name := "addr_from_words", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("hi4", Flapjack.Shape.one), ("mid8", Flapjack.Shape.one), ("lo8", Flapjack.Shape.one)], body := globalBody899_6, returnShape := (Flapjack.Shape.one) }
def globalOutput899 := Pancake.PanLang.declToHOL globalData899
end InitECandidate.Proofs.FrontendStages.Declarations
