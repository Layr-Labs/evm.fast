import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body24_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.op Flapjack.BinOp.and
          [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 71777214294589695#64])
        (Flapjack.Exp.const 8#64),
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 8#64),
          Flapjack.Exp.const 71777214294589695#64]])

def body24_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.op Flapjack.BinOp.and
          [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 281470681808895#64])
        (Flapjack.Exp.const 16#64),
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 16#64),
          Flapjack.Exp.const 281470681808895#64]])

def body24_2 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 32#64)])

def body24_3 : Prog (BitVec 64) :=
.seq body24_1 body24_2

def body24_4 : Prog (BitVec 64) :=
.seq body24_0 body24_3

def body24_5 : Prog (BitVec 64) :=
.seq body24_0 body24_1

def body24_6 : Prog (BitVec 64) :=
.seq body24_5 body24_2

def originalData24 : Decl (BitVec 64) :=
.function { name := "bswap64", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body24_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData24 : Decl (BitVec 64) :=
.function { name := "bswap64", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body24_6, returnShape := (Flapjack.Shape.one) }
def original24 := Pancake.PanLang.declToHOL originalData24
def simplified24 := Pancake.PanLang.declToHOL simplifiedData24
end InitECandidate.Proofs.FrontendStages.Declarations
