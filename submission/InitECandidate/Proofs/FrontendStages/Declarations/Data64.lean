import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify48
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body64_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body64_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.const 1#64),
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "lo")
            (Flapjack.Exp.var Flapjack.VarKind.local "i"),
          Flapjack.Exp.const 1#64]])

def body64_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "d"])

def body64_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "q"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")])

def body64_4 : Prog (BitVec 64) :=
.seq body64_2 body64_3

def body64_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body64_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.var Flapjack.VarKind.local "d")) body64_4 body64_5

def body64_7 : Prog (BitVec 64) :=
.seq body64_1 body64_6

def body64_8 : Prog (BitVec 64) :=
.seq body64_0 body64_7

def body64_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body64_8

def body64_10 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "r"])

def body64_11 : Prog (BitVec 64) :=
.seq body64_9 body64_10

def body64_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 32#64) body64_11

def body64_13 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "hi") body64_12

def body64_14 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body64_13

def body64_15 : Prog (BitVec 64) :=
.seq body64_0 body64_1

def body64_16 : Prog (BitVec 64) :=
.seq body64_15 body64_6

def body64_17 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body64_16

def body64_18 : Prog (BitVec 64) :=
.seq body64_17 body64_10

def body64_19 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 32#64) body64_18

def body64_20 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "hi") body64_19

def body64_21 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body64_20

def originalData64 : Decl (BitVec 64) :=
.function { name := "div64by32", inline := false, exported := false, params := [("hi", Flapjack.Shape.one), ("lo", Flapjack.Shape.one), ("d", Flapjack.Shape.one)], body := body64_14, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData64 : Decl (BitVec 64) :=
.function { name := "div64by32", inline := false, exported := false, params := [("hi", Flapjack.Shape.one), ("lo", Flapjack.Shape.one), ("d", Flapjack.Shape.one)], body := body64_21, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original64 := Pancake.PanLang.declToHOL originalData64
def simplified64 := Pancake.PanLang.declToHOL simplifiedData64
end InitECandidate.Proofs.FrontendStages.Declarations
