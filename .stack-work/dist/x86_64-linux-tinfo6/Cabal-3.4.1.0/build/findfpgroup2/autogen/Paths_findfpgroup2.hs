{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_findfpgroup2 (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/neo/Documents/github/findfpgroup/.stack-work/install/x86_64-linux-tinfo6/1f45093752dbaa4728a094b0f7c05449e485d567c278b337ef15d1f6460eadbc/9.0.2/bin"
libdir     = "/home/neo/Documents/github/findfpgroup/.stack-work/install/x86_64-linux-tinfo6/1f45093752dbaa4728a094b0f7c05449e485d567c278b337ef15d1f6460eadbc/9.0.2/lib/x86_64-linux-ghc-9.0.2/findfpgroup2-0.1.0.0-HcraWYdgzJeoHEyTwfbCf-findfpgroup2"
dynlibdir  = "/home/neo/Documents/github/findfpgroup/.stack-work/install/x86_64-linux-tinfo6/1f45093752dbaa4728a094b0f7c05449e485d567c278b337ef15d1f6460eadbc/9.0.2/lib/x86_64-linux-ghc-9.0.2"
datadir    = "/home/neo/Documents/github/findfpgroup/.stack-work/install/x86_64-linux-tinfo6/1f45093752dbaa4728a094b0f7c05449e485d567c278b337ef15d1f6460eadbc/9.0.2/share/x86_64-linux-ghc-9.0.2/findfpgroup2-0.1.0.0"
libexecdir = "/home/neo/Documents/github/findfpgroup/.stack-work/install/x86_64-linux-tinfo6/1f45093752dbaa4728a094b0f7c05449e485d567c278b337ef15d1f6460eadbc/9.0.2/libexec/x86_64-linux-ghc-9.0.2/findfpgroup2-0.1.0.0"
sysconfdir = "/home/neo/Documents/github/findfpgroup/.stack-work/install/x86_64-linux-tinfo6/1f45093752dbaa4728a094b0f7c05449e485d567c278b337ef15d1f6460eadbc/9.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "findfpgroup2_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "findfpgroup2_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "findfpgroup2_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "findfpgroup2_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "findfpgroup2_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "findfpgroup2_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
