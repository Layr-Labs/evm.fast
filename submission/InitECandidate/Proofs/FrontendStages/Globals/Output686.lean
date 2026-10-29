import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data686
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate670
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody686_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_init" []

def globalBody686_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody686_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody686_3 : Prog (BitVec 64) :=
.seq globalBody686_1 globalBody686_2

def globalBody686_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody686_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "qi", Flapjack.Exp.var Flapjack.VarKind.local "pi"])
  (Flapjack.Exp.const 1#64)) globalBody686_3 globalBody686_4

def globalBody686_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_twist"
  [Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.var Flapjack.VarKind.local "q2"]

def globalBody686_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_cast"
  [Flapjack.Exp.var Flapjack.VarKind.local "P", Flapjack.Exp.var Flapjack.VarKind.local "p1"]

def globalBody686_8 : Prog (BitVec 64) :=
.seq globalBody686_6 globalBody686_7

def globalBody686_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_miller_raw"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fden",
    Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.var Flapjack.VarKind.local "P"]

def globalBody686_10 : Prog (BitVec 64) :=
.seq globalBody686_8 globalBody686_9

def globalBody686_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_inv"
  [Flapjack.Exp.var Flapjack.VarKind.local "fden", Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def globalBody686_12 : Prog (BitVec 64) :=
.seq globalBody686_10 globalBody686_11

def globalBody686_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fnum",
    Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def globalBody686_14 : Prog (BitVec 64) :=
.seq globalBody686_12 globalBody686_13

def globalBody686_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_pow_words"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "fnum",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
    Flapjack.Exp.const 44#64]

def globalBody686_16 : Prog (BitVec 64) :=
.seq globalBody686_14 globalBody686_15

def globalBody686_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody686_18 : Prog (BitVec 64) :=
.seq globalBody686_16 globalBody686_17

def globalBody686_19 : Prog (BitVec 64) :=
.seq globalBody686_18 globalBody686_2

def globalBody686_20 : Prog (BitVec 64) :=
.decCall ("fden") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) globalBody686_19

def globalBody686_21 : Prog (BitVec 64) :=
.decCall ("fnum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) globalBody686_20

def globalBody686_22 : Prog (BitVec 64) :=
.decCall ("P") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) globalBody686_21

def globalBody686_23 : Prog (BitVec 64) :=
.decCall ("Q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) globalBody686_22

def globalBody686_24 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody686_23

def globalBody686_25 : Prog (BitVec 64) :=
.seq globalBody686_5 globalBody686_24

def globalBody686_26 : Prog (BitVec 64) :=
.decCall ("pi") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "p1"]) globalBody686_25

def globalBody686_27 : Prog (BitVec 64) :=
.decCall ("qi") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "q2"]) globalBody686_26

def globalBody686_28 : Prog (BitVec 64) :=
.seq globalBody686_0 globalBody686_27

def globalData686 : Decl (BitVec 64) :=
.function { name := "bn254_pairing", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("q2", Flapjack.Shape.one), ("p1", Flapjack.Shape.one)], body := globalBody686_28, returnShape := (Flapjack.Shape.one) }
def globalOutput686 := Pancake.PanLang.declToHOL globalData686
end InitECandidate.Proofs.FrontendStages.Declarations
